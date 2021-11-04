#include "Comms.h"

String Data[16];

String ConstructSingleChannelDataPacket(int ChannelFrom, uint16_t Data);
String ConstructAllChannelDataPacket();


void CommsReadAndDecode()
{
  //Reads in command string
  String Recieved = Serial.readString();
  
  //Removes any newlines
  if(Recieved.endsWith("\n"))
  {
    Recieved.remove(Recieved.length()-1,1);
  }

  //Checks structure
  if(Recieved.startsWith("A") && Recieved.endsWith("Z"))
  {
    //Valid Message so remove start and end bytes
    String Message = Recieved.substring(1,Recieved.length()-1);
    
    if(Message.startsWith("R"))
    {
      //PC is requesting something
      
      String Request = Message.substring(1,Message.length());

      if(Request.startsWith("ACD"))
      {
        //Requesting all channels data
        for (int n = 0;n<16;n++)
        {
          //Read channel result
          uint16_t Result = 0;
          //Gets data from channel, making sure that its from the right channel
          bool Success = false;
          while(!Success)
          {
            Success = ADCReadChannel(n,&Result);
          }
          Data[n] = String(Result);         
        }
        //Send data
        //Serial.println("Hi");
        Serial.println(ConstructAllChannelDataPacket());
      }
      else if(Request.startsWith("C"))
      {
        //Requesting single channel value
        int ChannelRequested = Request.substring(1,3).toInt();
        uint16_t Result = 0;
        bool Success = false;
        while(!Success)
        {
          Success = ADCReadChannel(ChannelRequested,&Result);
        }
        Serial.println(ConstructSingleChannelDataPacket(ChannelRequested,Result));      
      }   
    }
    else
    {
      
    }        
  }
  else
  {
    //Error invalid message doesnt follow format so will be ignored
  }
}

String ConstructSingleChannelDataPacket(int ChannelFrom, uint16_t data)
{
  String Packet  = "ADC";
  if (ChannelFrom < 10)
  {
    Packet += "0";
  }
  Packet += String(ChannelFrom);
  for (int n = 0; n < (5-String(data).length());n++)
  {
    Packet += "0";
  }
  Packet += String(data);
  Packet += "Z";
  return Packet;
}

String ConstructAllChannelDataPacket()
{
  //This function assumes Data has been set
  String Packet = "ADACH";
  for(int x = 0; x < 16; x++)
  {
    for (int y = 0; y < (5-String(Data[x]).length()); y++)
    {
      Packet += "0";
    }
    Packet += String(Data[x]);
  }
  Packet += "Z";
  
  return Packet;
} 
