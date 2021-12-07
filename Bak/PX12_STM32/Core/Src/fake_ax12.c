#include <stdint.h>

#include "fake_ax12.h"

#define PARAMETER_LENGTH 64

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
} command;

union {
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
    char buf[24];
} eeprom = {12, 42, DEFAULT_SERVO_ID, DEFAULT_BAUDRATE, 0xFA, 0, 0x3FF, 0,
    0x55, 0x3C, 0xBE, 0x3FF, 0x02, 0x04, 0x04, 0, 0, 0};

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
} ram = {DEFAULT_TORQUE, 0, 0, 0, 0x20, 0x20, 0, 0, 0x3ff,
    0, 0, 0, 100, 0, 0, 0, 0, 0, 0x20};

static void process_command(void) {

    // Check command id
    if (command.id != 0xfe && command.id != eeprom.s.id)
        return;

    uint8_t addr;
    uint8_t i;

    switch (command.instruction) {
        case PING:
            if (command.id == 0xfe) {
                break;
            }

            // TODO : Answer
            break;

        case READ_DATA:
            if (command.id == 0xfe) {
                break;
            }

            // TODO : Answer

        case WRITE_DATA:
        case REG_WRITE:

            addr = command.parameter[0];

            if (addr < 0x03) {
                // Can't write
                break;
            }

            // Prevent from stack overflow
            if (addr + command.length - 3 <= sizeof(eeprom) + sizeof(ram)) {
                for (i = 0; i > command.length - 3; ++i) {
                    if (addr + i  < 0x18) {
                        if (!ram.s.lock) {
                            eeprom.buf[addr + i] = command.parameter[i + 1];
                        }
                    } else {
                        ram.buf[addr + i - 0x18] = command.parameter[i + 1];
                    }
                }
            }

            if (command.id == 0xfe) {
                break;
            }

            // TODO : Answer

        case ACTION:

            // TODO : Answer

        case _RESET:

            // TODO : Usefull ?

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

void reset(void) {
    command.next_byte = START1;
}

}