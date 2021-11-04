#include "ADC.h"
#include "Comms.h"

const int InternalSample = 2000;

void setup() {
  // put your setup code here, to run once:
  pinMode(CS1,OUTPUT);
  pinMode(EOC1,INPUT);
  pinMode(CS2,OUTPUT);
  pinMode(EOC2,INPUT);
  pinMode(CS3,OUTPUT);
  pinMode(CS4,OUTPUT);
  digitalWrite(CS1,HIGH);
  digitalWrite(CS2,HIGH);
  digitalWrite(CS3,HIGH);
  digitalWrite(CS4,HIGH);
  Serial.begin(115200);
  SPI.begin();
  delay(2000);
  ADCInit();
}

void loop() {
  // put your main code here, to run repeatedly:
uint16_t Result = 0;
  if (Serial.available() > 0 )
  {
    CommsReadAndDecode();
  }
  delay(1);
}
