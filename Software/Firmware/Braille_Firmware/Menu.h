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


#ifndef Menu_h
#define Menu_h

int8_t Selected_Menu_Level;
int8_t mode_last;

#include "BrailleText.h"
#include "SerialCommunication.h"
#include "SD_Card.h"
#include "RTC.h"
#include "Settings.h"
#include "Radio.h"
#include "Calc.h"


void SetupMenu()
{
  // Init some stuff
  Selected_Menu_Level = 0;
  mode = 0;
  mode_last = 0;
  /* mode 
   *  0 USB Mode 
   *  1 BT
   *  2 Books
   *  3 CLOCK
   *  4 DATE
   *  5 DAY
   *  6 Radio
   *  7 Calc
   *  100 MENU
   */
  
}

void ShowSelectedMenu()
{
  switch(Selected_Menu_Level)
  {
    case 0:
      strcpy(brailleTextToShow, "USB PC");
      break;
    case 1:
      strcpy(brailleTextToShow, "BT");
      break;
    case 2:
      strcpy(brailleTextToShow, "Books");
      break;
    case 3:
      strcpy(brailleTextToShow, "Clock");
      break;
    case 4:
      strcpy(brailleTextToShow, "Date");
      break;
    case 5:
      strcpy(brailleTextToShow, "Day");
      break;
    case 6:
      strcpy(brailleTextToShow, "Radio");
      break;
    case 7:
      strcpy(brailleTextToShow, "Calc");
      break;
    case 8:
      strcpy(brailleTextToShow, "Back");
      break;
  }
  //show it
  requireDisplayUpdate = 1;
}

void switchMenu(uint8_t UpDown) // 1 Up, 2 Down
{
  if(UpDown == 2)
  {
    Selected_Menu_Level--;
    if(Selected_Menu_Level<0)
    {
      Selected_Menu_Level = 8;
    }
  }
  else if(UpDown == 1 )
  {
    Selected_Menu_Level++;
    if(Selected_Menu_Level>8)
    {
      Selected_Menu_Level = 0;
    }
  }  
  ShowSelectedMenu();
}

void SelectMenu()
{
  
  
  switch(Selected_Menu_Level)
  {
    case 0:
      digitalWrite(Bluetooth_PIN, LOW);   // Turn Off BT
      SerialWriteLog(F("[EVENT] USB Mode selected"));
      mode = 0;

      PrepareBrailleTextFromBuffer();
      
      break;
    case 1:
      digitalWrite(Bluetooth_PIN, HIGH);
      SerialWriteLog(F("[EVENT] BT Mode selected"));
      mode = 1;

      PrepareBrailleTextFromBuffer();
      break;
    case 2:
      SerialWriteLog(F("[EVENT] Book Mode selected"));
      mode = 2;

      //Get first SD Card File      
      if(OpenFile(currentFileName))
      {
        if(ReadByteFromFile()==0)
        {
          strcpy(brailleTextToShow, "ERROR   ");
        }            
      }     
      break;
    case 3:
      SerialWriteLog(F("[EVENT] Clock Mode selected"));
      mode = 3;

      displayTime();
      break;
    case 4:
      SerialWriteLog(F("[EVENT] Date Mode selected"));
      mode = 4;
      displayDate();
      break;
    case 5:
      SerialWriteLog(F("[EVENT] Day Mode selected"));
      mode = 5;
      displayDay();
      break;    
    case 6:
      SerialWriteLog(F("[EVENT] Radio Mode selected"));
      mode = 6;
      showRadio();
      break;     
    case 7:
      initCalc();
      SerialWriteLog(F("[EVENT] Calc Mode selected"));
      mode = 7;
      break;      
    case 8:
      SerialWriteLog(F("[EVENT] Back selected"));
      mode = mode_last;
      Selected_Menu_Level = mode;
      SelectMenu();
      break;      
  } 
  
  mode_last = mode;
  Selected_Menu_Level = mode;
  //show sth
  requireDisplayUpdate = 1;
}

#endif
