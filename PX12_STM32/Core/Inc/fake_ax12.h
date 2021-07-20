#ifndef FAKE_AX12_H
#define FAKE_AX12_H

#include <stdint.h>

#define DEFAULT_SERVO_ID 10
#define DEFAULT_BAUDRATE 1
#define DEFAULT_TORQUE 1

enum ax12_eeprom_uint8_field {
    version                 = 2,
    id                      = 3,
    baudrate                = 4,
    return_delay            = 5,
    temp_limit_high         = 11,
    voltage_limit_low       = 12,
    voltage_limit_high      = 13,
    status_return_level     = 16,
    status_return_level     = 17,
    alarm_shutdown          = 18
};

enum ax12_eeprom_uint16_field {
    model                   = 0,
    CW_angle_limit          = 6,
    CCW_angle_limit         = 8,
    max_torque              = 14,
    down_calibration        = 20,
    up_calibration          = 22
};

enum ax12_ram_uint8_field {
    torque_enable           = 0,
    led                     = 1,
    CW_compliance_margin    = 2,
    CCW_compliance_margin   = 3,
    CW_compliance_slope     = 4,
    CCW_compliance_slope    = 5,
    present_voltage         = 18,
    present_temperature     = 19,
    registered_instruction  = 20,
    moving                  = 22,
    lock                    = 23
};

enum ax12_ram_uint16_field {
    goal_position           = 6,
    moving_speed            = 8,
    torque_limit            = 10,
    present_position        = 12,
    present_speed           = 14,
    present_load            = 16,
    punch                   = 24
};

void read_ax12_eeprom_from_flash(void);
void write_ax12_eeprom_to_flash(void);

uint8_t read_ax12_eeprom_uint8_field(enum ax12_eeprom_uint8_field field);
uint16_t read_ax12_eeprom_uint16_field(enum ax12_eeprom_uint16_field field);

uint8_t read_ax12_ram_uint8_field(enum ax12_ram_uint8_field field);
uint16_t read_ax12_ram_uint16_field(enum ax12_ram_uint16_field field);

void write_ax12_ram_uint8_field(enum ax12_ram_uint8_field field, uint8_t data);
void write_ax12_ram_uint16_field(enum ax12_ram_uint16_field field, uint16_t data);

void reset(void);
void add_byte(uint8_t byte);

#endif  /* FAKE_AX12_H */
