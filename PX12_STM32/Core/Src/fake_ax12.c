#include <stdbool.h>
#include <stdint.h>

#include "fake_ax12.h"
#include "main.h"

#define PARAMETER_LENGTH (64)
#define SERIAL_TIMEOUT (10)

static UART_HandleTypeDef *huart = NULL;

struct {
    enum {
        START1 = 0,
        START2,
        ID,
        LENGTH,
        INSTRUCTION,
        PARAMETER,
        CHECKSUM
    } next_byte;

    uint8_t id;
    uint8_t length;

    enum {
        PING = 0x01,
        READ_DATA = 0x02,
        WRITE_DATA = 0x03,
        REG_WRITE = 0x04,
        ACTION = 0x05,
        _RESET = 0x06,
        SYNC_WRITE = 0x83
    } instruction;

    uint8_t parameter[PARAMETER_LENGTH];
    uint8_t checksum;
    uint8_t pos;
} static command;

union _eeprom {
    struct {
        uint16_t model;
        uint8_t version;
        uint8_t id;
        uint8_t baudrate;
        uint8_t return_delay;
        uint16_t CW_angle_limit;
        uint16_t CCW_angle_limit;
        uint8_t reserved1;
        uint8_t temp_limit_high;
        uint8_t voltage_limit_low;
        uint8_t voltage_limit_high;
        uint16_t max_torque;
        uint8_t status_return_level;
        uint8_t alarm_led;
        uint8_t alarm_shutdown;
        uint8_t reserved2;
        uint16_t down_calibration;
        uint16_t up_calibration;
    } s;
    uint8_t buf[24];
} static default_eeprom = {12, 42, DEFAULT_SERVO_ID, DEFAULT_BAUDRATE, 0xFA, 0, 0x3FF, 0,
    0x55, 0x3C, 0xBE, 0x3FF, 0x02, 0x04, 0x04, 0, 0, 0};

static union _eeprom eeprom;
static uint32_t eeprom_addr;

bool write_eeprom_to_flash(void) {
    HAL_FLASH_Unlock();

    uint8_t checksum = 0;

    for (unsigned i = 0; i < 24; ++i) {
        if (HAL_FLASH_Program(FLASH_TYPEPROGRAM_WORD, eeprom_addr + i, eeprom.buf[i]) != HAL_OK) {
            return false;
        }
        checksum += eeprom.buf[i];
    }

    if (HAL_FLASH_Program(FLASH_TYPEPROGRAM_WORD, eeprom_addr + 24, (uint8_t)~checksum) != HAL_OK) {
        return false;
    }

    HAL_FLASH_OB_Lock();
    return true;
}

union {
    struct {
        uint8_t torque_enable;
        uint8_t led;
        uint8_t CW_compliance_margin;
        uint8_t CCW_compliance_margin;
        uint8_t CW_compliance_slope;
        uint8_t CCW_compliance_slope;
        uint16_t goal_position;
        uint16_t moving_speed;
        uint16_t torque_limit;
        uint16_t present_position;
        uint16_t present_speed;
        uint16_t present_load;
        uint8_t present_voltage;
        uint8_t present_temperature;
        uint8_t registered_instruction;
        uint8_t reserved;
        uint8_t moving;
        uint8_t lock;
        uint16_t punch;
    } s;
    uint8_t buf[26];
} static ram = {DEFAULT_TORQUE, 0, 0, 0, 0x20, 0x20, 0, 0, 0x3ff,
    0, 0, 0, 100, 0, 0, 0, 0, 0, 0x20};

static void send_buffer(uint8_t buf[], unsigned len) {
    uint8_t checksum = 0;

    for (unsigned i = 2; i < len - 1; ++i) {
        checksum += buf[i];
    }

    buf[len - 1] = (uint8_t)~checksum;

    HAL_HalfDuplex_EnableTransmitter(huart);
    HAL_UART_Transmit(huart, buf, len, SERIAL_TIMEOUT);
    HAL_HalfDuplex_EnableReceiver(huart);
}

static void ping(void) {
    uint8_t buf[6];
    buf[0] = 0xff;
    buf[1] = 0xff;
    buf[2] = eeprom.s.id;
    buf[3] = 0x02;
    buf[4] = 0x00;

    send_buffer(buf, 6);
}

static void read(void) {
    uint8_t buf[6 + command.parameter[1]];
    buf[0] = 0xff;
    buf[1] = 0xff;
    buf[2] = eeprom.s.id;
    buf[3] = command.parameter[1] + 2;

    for (uint8_t i = 0; i < command.parameter[1]; ++i) {
        if (command.parameter[0] + i < 0x18) {
            buf[4 + i] = eeprom.buf[command.parameter[0] + i];
        } else {
            buf[4 + i] = ram.buf[command.parameter[0] + i - 0x18];
        }
    }

    send_buffer(buf, 6 + command.parameter[1]);
}

static void write_data(void) {
    uint8_t addr = command.parameter[0];

    if (addr > 0x03) {
        return;
    }

    if (addr + command.length - 0x03 <= sizeof(ram) + sizeof(eeprom)) {
        for (unsigned i = 0; i < command.length - 3; ++i) {
            if (addr + i < 0x18) {
                if (!ram.s.lock) {
                    eeprom.buf[addr + i] = command.parameter[i + 1];
                }
            } else {
                ram.buf[addr + i - 0x18] = command.parameter[i + 1];
            }
        }
    }

    write_eeprom_to_flash();

    if (command.id == 0xfe) {
        return;
    }

    uint8_t buf[6];
    buf[0] = 0xff;
    buf[1] = 0xff;
    buf[2] = eeprom.s.id;
    buf[3] = 0x02;
    buf[4] = 0x00;

    send_buffer(buf, 6);
}

void action(void) {
    uint8_t buf[6];
    buf[0] = 0xff;
    buf[1] = 0xff;
    buf[2] = eeprom.s.id;
    buf[3] = 0x02;
    buf[4] = 0x00;

    send_buffer(buf, 6);
}

void _reset(void) {
    // TODO : manage RAM

    for (unsigned i = 0; i < 24; ++i) {
        eeprom.buf[i] = default_eeprom.buf[i];
    }

    write_eeprom_to_flash();

    if (command.id == 0xfe) {
        return;
    }

    uint8_t buf[6];
    buf[0] = 0xff;
    buf[1] = 0xff;
    buf[2] = eeprom.s.id;
    buf[3] = 0x02;
    buf[4] = 0x00;

    send_buffer(buf, 6);
}

static void process_command(void) {

    // Check command id
    if (command.id != 0xfe && command.id != eeprom.s.id)
        return;

    switch (command.instruction) {
        case PING:
            if (command.id == 0xfe) {
                break;
            }

            ping();
            break;

        case READ_DATA:
            if (command.id == 0xfe) {
                break;
            }

            read();
            break;

        case WRITE_DATA:
        case REG_WRITE:
            // TODO : be compliant with ax12 ?
            write_data();
            break;

        case ACTION:
            // TODO : be compliant with ax12 ?
            action();
            break;

        case _RESET:
            _reset();
            break;

        case SYNC_WRITE:
            // TODO : Usefull ?
            break;
    }
}

void add_byte(uint8_t byte) {

    switch (command.next_byte) {

        case START1:
            if (byte == 0xff) {
                command.next_byte = START2;
            }
            break;

        case START2:
            if (byte == 0xff) {
                command.next_byte = ID;
                command.checksum = 0;
            } else {
                command.next_byte = START1;
            }
            break;

        case ID:
            command.id = byte;
            command.checksum += byte;
            command.next_byte = LENGTH;
            break;

        case LENGTH:
            command.length = byte;
            command.checksum += byte;
            command.next_byte = INSTRUCTION;
            break;

        case INSTRUCTION:
            command.instruction = byte;
            command.checksum += byte;
            command.pos = 0;
            if (command.length >= 2) {
                command.next_byte = CHECKSUM;
            }
            else {
                command.next_byte = PARAMETER;
            }
            break;

        case PARAMETER:
            if (command.pos < PARAMETER_LENGTH) {
                command.parameter[command.pos] = byte;
            }
            command.pos += 1;
            command.checksum += byte;
            if (command.length - command.pos <= 2) {
                command.next_byte = CHECKSUM;
            }
            break;

        case CHECKSUM:
            if (byte == ~command.checksum && command.length <= PARAMETER_LENGTH + 2) {
                process_command();
            }
            command.next_byte = START1;
            break;

    }
}

uint8_t read_ax12_eeprom_uint8_field(enum ax12_eeprom_uint8_field field) {
    return eeprom.buf[field];
}

uint16_t read_ax12_eeprom_uint16_field(enum ax12_eeprom_uint16_field field) {
    return  (uint16_t)eeprom.buf[field + 1] << 8 | eeprom.buf[field];
}

uint8_t read_ax12_ram_uint8_field(enum ax12_ram_uint8_field field) {
    return eeprom.buf[field];
}

uint16_t read_ax12_ram_uint16_field(enum ax12_ram_uint16_field field) {
    return  (uint16_t)ram.buf[field + 1] << 8 | ram.buf[field];
}

void write_ax12_ram_uint8_field(enum ax12_ram_uint8_field field, uint8_t data) {
    ram.buf[field] = data;
}

void write_ax12_ram_uint16_field(enum ax12_ram_uint16_field field, uint16_t data) {
    ram.buf[field] = (uint8_t)(data & 0xff);
    ram.buf[field + 1] = (uint8_t)((data & 0xff00) >> 8);
}

bool init(UART_HandleTypeDef *_huart, uint32_t _eeprom_addr) {
    if (_huart == NULL) {
        return false;
    }

    eeprom_addr = _eeprom_addr;
    huart = _huart;

    uint8_t checksum = 0;

    for (unsigned i = 0; i < 24; ++i) {
        eeprom.buf[i] = *(uint8_t *)(eeprom_addr + i);
        checksum += eeprom.buf[i];
    }

    if ((uint8_t)~checksum != *(uint8_t *)(eeprom_addr + 24)) {
        for (unsigned i = 0; i < 24; ++i) {
            eeprom.buf[i] = default_eeprom.buf[i];
        }

        write_eeprom_to_flash();
    }

    // TODO :
    // init huart interrupt

    return true;
}

void reset(void) {
    command.next_byte = START1;
}
