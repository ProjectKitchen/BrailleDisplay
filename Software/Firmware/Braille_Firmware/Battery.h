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
 
#ifndef Battery_h
#define Battery_h

#define Battery_Port 15
bool bat_stat = LOW;

void CheckBattery()
{
  pinMode(Battery_Port, INPUT);
  digitalWrite(Battery_Port, LOW);

  bool tmpBat = digitalRead(Battery_Port);
  
  if((tmpBat == HIGH) && (bat_stat == LOW))
  {
    Beep(1);
    SerialWriteLog(F("[EVENT] Battery charging"));
  }
  bat_stat = tmpBat;

  
}

#endif
