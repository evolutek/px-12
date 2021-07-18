#ifndef FAKE_AX12_H
#define FAKE_AX12_H

#include <stdint.h>

#define DEFAULT_SERVO_ID 10
#define DEFAULT_BAUDRATE 1
#define DEFAULT_TORQUE 1

void read_eeprom_from_flash(void);
void write_eeprom_to_flash(void);

void reset(void);
void add_byte(uint8_t byte);

#endif  /* FAKE_AX12_H */