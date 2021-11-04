#include "MAX31855.h"

SPISettings ThermoSPISettings(22000000,MSBFIRST,SPI_MODE2);

bool MAX31855ReadData(uint16_t *result)
{
  uint16_t ExternalTemp = (SPI.transfer16(0)>>2);
  uint16_t InternalTemp = (SPI.transfer16(0)>>4);
  *result = ExternalTemp;
  return true;
}
