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


#ifndef Radio_h
#define Radio_h

#include "BrailleText.h"

#define Radio_P1 99.9
#define Radio_P2 105.8
#define Radio_P3 103.4
#define Radio_P4 88.6
#define Radio_P5 104.2
#define Radio_P6 107.3
#define Radio_P7 102.5
#define Radio_P8 89.9


float frequency = 99.9;

void setFrequency();
void showRadio();

void initRadio()
{
  frequency = 99.9;
  setFrequency();
}

void showRadio()
{
  dtostrf(frequency, 4, 2, brailleTextToShow); 
}

void ChangeFrequency(uint8_t up_down)   // up_down 1 = up, 2 = down
{
  if(up_down == 1)
  {
    frequency += 0.1;
    if(frequency > 108)
    {
      frequency = 87.5;
    }
  }
  else if(up_down == 2)
  {
    frequency -= 0.1;
    if(frequency < 87.5)
    {
      frequency = 108;
    }
  }
  setFrequency();
}


void setFrequency()
{
  unsigned char frequencyH = 0;
  unsigned char frequencyL = 0;
  unsigned int frequencyB;
  SerialWriteLog(F("[EVENT] Set Radio Frequency"));
  frequencyB = 4 * (frequency * 1000000 + 225000) / 32768;
  frequencyH = frequencyB >> 8;
  frequencyL = frequencyB & 0XFF;
  delay(100);
  Wire.beginTransmission(0x60);
  Wire.write(frequencyH);
  Wire.write(frequencyL);
  Wire.write(0xB0);
  Wire.write(0x10);
  Wire.write((byte)0x00);
  Wire.endTransmission();
  delay(20);
}
#endif
