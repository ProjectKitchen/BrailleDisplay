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


#ifndef Vibration_h
#define Vibration_h

#define Vibration_PORT 14

void Vibrate(uint8_t vibrate)
{  
  SerialWriteLog(F("[EVENT] VIBRATE"));
  pinMode(Vibration_PORT, OUTPUT);
 
  if(vibrate == 0)
  {
     digitalWrite(Vibration_PORT, HIGH);
     delay(300);
     digitalWrite(Vibration_PORT, LOW);
  }
  else if(vibrate == 1)
  {
     digitalWrite(Vibration_PORT, HIGH);
     delay(300);
     digitalWrite(Vibration_PORT, LOW);
     delay(100);
     digitalWrite(Vibration_PORT, HIGH);
     delay(300);
     digitalWrite(Vibration_PORT, LOW);
  }
  else if(vibrate == 2)
  {
     digitalWrite(Vibration_PORT, HIGH);
     delay(300);
     digitalWrite(Vibration_PORT, LOW);
     delay(100);
     digitalWrite(Vibration_PORT, HIGH);
     delay(300);
     digitalWrite(Vibration_PORT, LOW);
     delay(100);
     digitalWrite(Vibration_PORT, HIGH);
     delay(300);
     digitalWrite(Vibration_PORT, LOW);
  }
}

#endif
