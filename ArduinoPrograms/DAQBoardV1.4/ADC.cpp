#include "ADC.h"

static int CS = CS1;

static uint16_t InitADC(int CS);
static uint16_t ReadResult(uint16_t *data, uint8_t *tag);
static uint16_t SendCommand(uint8_t Command, uint16_t CFR);

void ADCInit()
{
  InitADC(CS1);
  InitADC(CS3);
  delay(5);
  InitADC(CS1);
  InitADC(CS3);
  delay(5);
}

bool ADCReadChannel(uint8_t ChannelNumber, uint16_t *result)
{
  uint8_t TAG = 0;
  bool Thermo = false;

  if (ChannelNumber < 7)
  {
    CS = CS1;  
  }
  else if (ChannelNumber < 14)
  {
    CS = CS3;
    ChannelNumber -= 7;
  }
  else if (ChannelNumber < 15)
  {
    CS = CS2;
    Thermo = true;
  }
  else if (ChannelNumber < 16)
  {
    CS = CS4;
    Thermo = true;
  }
  else
  {
    return false;
  }

  if (!Thermo)
  {  
    SendCommand(ADCWriteCFRCommand,ADCCFRHalt);
  
    SendCommand(ChannelNumber,0);
  
    SendCommand(ADCWriteCFRCommand,ADCCFRGo);
  
    delay(5);
  
    ReadResult(result,&TAG);
  
    SendCommand(ADCWriteCFRCommand,ADCCFRHalt);
  
    if (TAG != ChannelNumber)
    {
      return false;
    }
    else
    {     
      return true;
    }
  }
  else
  {
    //Get reading from thermo chip !TO ADD!
    digitalWrite(CS,LOW);
    MAX31855ReadData(result);
    digitalWrite(CS,HIGH);
    return true;
  }
}

static uint16_t SendCommand(uint8_t Command, uint16_t CFR)
{
  uint16_t Value;
  digitalWrite(CS,LOW);
  Value = ADS8332SendCommand(Command,CFR);
  digitalWrite(CS,HIGH);
  return Value;
}

static uint16_t ReadResult(uint16_t *data, uint8_t *tag)
{
  digitalWrite(CS,LOW);
  ADS8332ReadResult(data,tag);
  digitalWrite(CS,HIGH);
}

static uint16_t InitADC(int CS)
{
  digitalWrite(CS,LOW);
  ADS8332Init();
  digitalWrite(CS,HIGH);
}
