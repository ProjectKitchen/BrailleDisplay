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


#ifndef BrailleText_h
#define BrailleText_h

#include "Settings.h"
#include "SerialCommunication.h"



char brailleText[StringBufferSize];
int16_t TextPosition;
char brailleTextToShow[NumberOfBrailleCells+1];

char brailleTextCalc[32];
uint8_t calcPos;




void PrepareBrailleTextFromBuffer();

void ClearBrailleTextBuffer();

void ClearBrailleTextCalc();




void ClearBrailleTextCalc()
{
  calcPos = 0;
  for(uint8_t i = 0; i < 32; i++)
  {
    brailleTextCalc[i] = '\0';
  }
}

void ClearBrailleTextBuffer()
{
  for(uint8_t i = 0; i <= NumberOfBrailleCells; i++)
  {
    brailleTextToShow[i] = '\0';
  }

  for(uint16_t i = 0; i < StringBufferSize; i++)
  {
    brailleText[i] = '\0';
  }

  TextPosition = 0;
    
}


void PrepareBrailleTextFromBuffer()
{
   for(uint8_t i = 0; i < (NumberOfBrailleCells); i++)
   {
      brailleTextToShow[i] = brailleText[i + TextPosition];
      if(brailleTextToShow[i] == '\0')
      {        
        break;
      }
   }    
   brailleTextToShow[NumberOfBrailleCells] = '\0';
  
}

#endif


