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


#ifndef Calc_h
#define Calc_h

#include "BrailleText.h"


void initCalc()
{
  ClearBrailleTextBuffer();
  ClearBrailleTextCalc();
}

void showCalc()
{
  uint8_t i = 0;
  for(; i < 32; i++)
  {
    if(brailleTextCalc[i] == '\0')
    {
      break;
    }
  }

  if(i>7)
  {
    for(uint8_t j = 0; j < NumberOfBrailleCells; j++)
    {
      brailleTextToShow[j] = brailleTextCalc[i-NumberOfBrailleCells+j];
    }
  }
  else
  {
    for(uint8_t j = 0; j < NumberOfBrailleCells; j++)
    {
      brailleTextToShow[j] = brailleTextCalc[j];
    }
  }
}

void Calc()
{
  uint8_t plusOP = 0;
  uint8_t minusOP = 0;
  uint8_t timesOP = 0;
  uint8_t divideOP = 0;

  float result = 0;

  for(uint8_t i = 0; i < 32; i++)
  {
    if(brailleTextCalc[i] == '+')
    {
      plusOP++;
    }
    else if(brailleTextCalc[i] == '-')
    {
      minusOP++;
    }
    else if(brailleTextCalc[i] == '*')
    {
      timesOP++;
    }
    else if(brailleTextCalc[i] == '/')
    {
      divideOP++;
    }
    else if(brailleTextCalc[i] == '\0')
    {
      break;
    }
  }

  if(plusOP+minusOP+timesOP+divideOP!=1)
  {
    strcpy(brailleTextToShow,"Error");
    SerialWriteLine(F("[ERROR] Error in calculation"));
  }
  else
  {
    String str(brailleTextCalc);
    String number1;
    String number2;

    if(plusOP)
    {
        uint8_t index = str.indexOf('+');
        number1 = str.substring(0, index);
        number2 = str.substring(index+1);

        result = number1.toInt() + number2.toInt();
        initCalc();
        dtostrf(result, 8, 0, brailleTextToShow);
    } 
    else if(minusOP)
    {
        uint8_t index = str.indexOf('-');
        number1 = str.substring(0, index);
        number2 = str.substring(index+1);

        result = number1.toInt() - number2.toInt();
        initCalc();
        dtostrf(result, 8, 0, brailleTextToShow);
    } 
    else if(timesOP)
    {
        uint8_t index = str.indexOf('*');
        number1 = str.substring(0, index);
        number2 = str.substring(index+1);

        result = number1.toInt() * number2.toInt();
        initCalc();
        dtostrf(result, 8, 0, brailleTextToShow);
    }
    else if(divideOP)
    {
        uint8_t index = str.indexOf('/');
        number1 = str.substring(0, index);
        number2 = str.substring(index+1);

        result = (float)number1.toInt() / (float)number2.toInt();

        initCalc();
        dtostrf(result, 8, 2, brailleTextToShow);
    }    
    requireDisplayUpdate = 1;
  }  
}

#endif
