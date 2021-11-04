#include "ADS8332.h"

SPISettings ADCSPISettings(22000000,MSBFIRST,SPI_MODE2);

static uint16_t SendCommand(uint8_t Command, uint16_t CFR);

void ADS8332Init()
{
  ADS8332SendCommand(ADCDefaultCommand,0);
}

uint16_t ADS8332SendCommand(uint8_t Command, uint16_t CFR)
{
  return SendCommand(Command, CFR);
}

bool ADS8332ReadResult(uint16_t *result, uint8_t *tag)
{
  *result = SendCommand(ADCReadDataCommand,0);
  *tag = SPI.transfer(0) >> 5;
  return true;
}


static uint16_t SendCommand(uint8_t Command, uint16_t CFR)
{
  if (Command < 16)
  {
    uint16_t Returned = 0;
    
    CFR &= 0x0FFF;
    CFR |= (Command << 12);

    SPI.beginTransaction(ADCSPISettings);

    Returned = SPI.transfer16(CFR);    


    SPI.endTransaction();
  
    return Returned;
  }
  else
  {
    //Serial.println("ADS8332: Command not recognised");  

    return 0;
  }  
}
