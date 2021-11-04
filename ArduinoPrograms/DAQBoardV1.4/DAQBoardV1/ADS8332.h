#include <Arduino.h>
#include <SPI.h>

#define ADCWakeUpCommand (uint8_t)0x0B
#define ADCReadCFRCommand (uint8_t)0x0C
#define ADCReadDataCommand (uint8_t)0x0D
#define ADCWriteCFRCommand (uint8_t)0x0E
#define ADCDefaultCommand (uint8_t)0x0F

#define ADCCFRHalt (uint16_t)0x07FF
#define ADCCFRGo (uint16_t)0x05FF

void ADS8332Init();
uint16_t ADS8332SendCommand(uint8_t Command, uint16_t CFR);
bool ADS8332ReadResult(uint16_t *result, uint8_t *tag);
