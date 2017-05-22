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


#ifndef BrailleProtocol_h
#define BrailleProtocol_h

#include "BrailleText.h"
#include "SerialCommunication.h"


void parseCommand()
{
  ClearBrailleTextBuffer();
  TextPosition = 0;

  for(uint16_t i = 0; i < StringBufferSize; i++)
  {
    brailleText[i] = inputString[i];
  }
  switch(mode)
  {
    case 0:
      PrepareBrailleTextFromBuffer();
      requireDisplayUpdate = 1;
      break;
    case 1:
      PrepareBrailleTextFromBuffer();
      requireDisplayUpdate = 1;
      break;
  }
  
}



#endif 


