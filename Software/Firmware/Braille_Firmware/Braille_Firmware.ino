/*
 * Author : Christoph Ulbinger, MSc
 * Date :   19.05.2017
 * 
    This software is free software: you can redistribute it and/or modify
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

#include <SoftwareSerial.h>
#include <SPI.h>

#include <SD.h>

#include "Settings.h"
#include "BrailleLookUp.h"
#include "Wire.h"
#include "PortExpander.h"
#include "KeyBoard.h"
#include "SerialCommunication.h"
#include "Menu.h"
#include "SD_Card.h"
#include "BrailleProtocol.h"
#include "BrailleCell.h"
#include "RTC.h"
#include "Sound.h"
#include "Vibration.h"
#include "Battery.h"
#include "Radio.h"
#include "Calc.h"

void setup() {
  
  SetupSerial();    
  Keyboard.begin();
  SetUpKeyboard();
  SetupPortExpander();  
  SetupBraille();
  SetupMenu();
  
  SetupSD();
  GetFileFromSD();  
  
  setupRTC();
  initRadio();
 

  Beep(0);
  Vibrate(1);
  requireDisplayUpdate = 0;
}

void loop() 
{
  // User Input
  checkKeyBoardState();
  
  // Get Command via Serial
  if(CheckSerialCommunication())
  {
    parseCommand();   
  }

  //Refresh Display
  ShowDisplay();
  
  CheckBattery();
  delay(10);

  static uint8_t cnt = 0;
  cnt++;
  if(cnt==100)
  {     
    ClearBrailleDotState(BrailleCell_1_1_Expander, BrailleCell_1_1_PORT, (byte)(BrailleCell_1_1_PIN));
  }
  else if(cnt>=200)
  {
    SetBrailleDot(1, (byte)BrailleCell_1_1_PIN);
    cnt = 0;
  }
}




void ShowDisplay()
{
  static uint8_t refreshCounter = 0;
  if(requireDisplayUpdate)
  {
    switch(mode)
    {
      case 0:
        SerialWriteLine(brailleTextToShow);
        requireDisplayUpdate = 0;
        break;
      case 1:
         SerialWriteLine(brailleTextToShow);
         requireDisplayUpdate = 0;
        break;
      case 2:
         SerialWriteLine(brailleTextToShow);
         requireDisplayUpdate = 0;
        break;
      case 3:
         refreshCounter++;
         if(refreshCounter >= 100)
         {
            displayTime();
            SerialWriteLine(brailleTextToShow);
            refreshCounter = 0;
         }
         requireDisplayUpdate = 1;
        break;
      case 4:
         SerialWriteLine(brailleTextToShow);
         requireDisplayUpdate = 0;
        break;
      case 5:
         SerialWriteLine(brailleTextToShow);
         requireDisplayUpdate = 0;
        break;
      case 6:
         SerialWriteLine(brailleTextToShow);
         requireDisplayUpdate = 0;
        break;
      case 7:
         SerialWriteLine(brailleTextToShow);
         requireDisplayUpdate = 0;
        break;
  
      case 100:
        SerialWriteLine(brailleTextToShow); 
        requireDisplayUpdate = 0;
        break;
    }
  }  
}

