/*
 * Author : Christoph Ulbinger, MSc
 * Date :   19.05.2017
 * 
 *  This software is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    Braille Firmware is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with the Braille Firmware.  If not, see <http://www.gnu.org/licenses/>.
 */


#ifndef SerialCommunication_h
#define SerialCommunication_h

#define Bluetooth_PIN 6

void serialEvent();
uint8_t CheckSerialCommunication();
void SetupSerial();



char inputString[StringBufferSize];         // a string to hold incoming data
boolean stringComplete = false;  // whether the string is complete

// set this to the hardware serial port you wish to use
#define HWSERIAL Serial1

void SerialWriteLine(String);
void SerialReadLine(char *);

void SetupSerial()
{
  Serial.begin(9600);
  //while(!Serial);
  //BT
  pinMode(Bluetooth_PIN, OUTPUT);
  digitalWrite(Bluetooth_PIN, LOW);
  Serial1.begin(9600);
  stringComplete = false;
}

uint8_t CheckSerialCommunication()
{
  SerialReadLine(inputString); 
  if (stringComplete) 
  {
    stringComplete = false;
    return 1;
  }
  return 0;
}

void SerialReadLine(char * buffer)
{
  uint8_t idx = 0;
  char c;

    while (Serial.available() && (idx < StringBufferSize-1))
    {
      c = Serial.read();
      if ((c == '\n')||(c =='\r')) {
        stringComplete = true;
      }
      else
      {
          buffer[idx++] = c;  
      }
      
    }
    buffer[idx] = 0;
}

void SerialWriteLine(String line)
{
    delay(10);
    Serial.println(line);
    delay(10);
    Serial1.println(line);
  
}

void SerialWriteLog(String line)
{
   delay(10);
   Serial.println(line);
   delay(10);
   Serial1.println(line);
  
}

#endif
