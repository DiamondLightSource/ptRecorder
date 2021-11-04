#include "ADS8332.h"
#include "MAX31855.h"

//ADC Chip 1
#define CS1 (int)0
#define EOC1 (int)1

//ADC Chip 2
#define CS3 (int)3
#define EOC2 (int)4

//MAX Chip 1
#define CS2 (int)2

//MAX Chip 2
#define CS4 (int)5

void ADCInit();
bool ADCReadChannel(uint8_t ChannelNumber, uint16_t *result);
