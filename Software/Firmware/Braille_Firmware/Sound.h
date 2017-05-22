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


#ifndef Sound_h
#define Sound_h

#define PIEZO_PORT 16


void Beep(uint8_t beep)
{  
  SerialWriteLog(F("[EVENT] SOUND"));
  if(beep == 0)
  {
    tone(PIEZO_PORT, 1200); // Send 1KHz sound signal...
    delay(120);        // ...for 1 sec
    noTone(PIEZO_PORT);     // Stop sound... 
    tone(PIEZO_PORT, 1350); // Send 1KHz sound signal...
    delay(200);        // ...for 1 sec
    noTone(PIEZO_PORT);     // Stop sound...
  }
  else if(beep == 1)
  {
    tone(PIEZO_PORT, 1200); // Send 1KHz sound signal...
    delay(50);        // ...for 1 sec
    noTone(PIEZO_PORT);     // Stop sound... 
    tone(PIEZO_PORT, 1350); // Send 1KHz sound signal...
    delay(150);        // ...for 1 sec
    noTone(PIEZO_PORT);     // Stop sound...
  }
}

#endif
