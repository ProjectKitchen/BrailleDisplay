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


#ifndef SD_Card_h
#define SD_Card_h



#include "Settings.h"
#include "BrailleText.h"
#include "SerialCommunication.h"

uint8_t GetNextFileFromSD();

File myFile;

void getFiles(File dir);
bool SetupSD();
bool OpenFile(String filename);
bool ReadFile();
void CloseFile();
uint8_t GetNextFile();

File root;
int myFilePos;

String currentFileName;

bool SetupSD()
{  
  if (!SD.begin(10)) {
    SerialWriteLog(F("[ERROR] No SD card"));
    return 0;
  }
  SerialWriteLog(F("[EVENT] SD card OK"));

  root = SD.open("/");  
  currentFileName = "";
  myFilePos = 0;
  
  return 1;
}

void GetFileFromSD() 
{
   while(true) {     
     File entry =  root.openNextFile();
     if (! entry) {
       // no more files
       break;
     }   
     
     if (entry.isDirectory()) {
     } else {
      String fileName = "";
      fileName = entry.name();
      if(fileName != "NOTES.TXT")
      {
        currentFileName = fileName;
        entry.close();
        
        break;
      }
     }     
   }
   //SerialWriteLog(currentFileName);
}

bool OpenFile(String filename)
{
  myFile = SD.open(filename.c_str());
  if (!myFile)
  {
    SerialWriteLog(F("[ERROR] File not found"));
    return 0;
  }  
  return 1;
}

void CloseFile()
{
    myFile.close();
}


char Replace(char character)
{
  if( character == '\r' | character == '\n')
  {
    return ' ';
  }
  return character;
}


bool ReadByteFromFile()
{    
   if (myFile)
   {
    uint16_t textCounter = 0;

    for(uint16_t i = 0; i < StringBufferSize; i++)
    {
      brailleText[i] = '\0';
    }
    
    // read all the text written on the file
    while(textCounter<NumberOfBrailleCells) 
    {     
      if(!myFile.available()) 
      {
        brailleTextToShow[textCounter] = '\0';
        return 2;
      }
      brailleTextToShow[textCounter] = myFile.read();
      if(brailleTextToShow[textCounter]>127)    // not recognized characters)
      {
        continue;
      }
      myFilePos = myFile.position();
      brailleTextToShow[textCounter] = Replace(brailleTextToShow[textCounter]);      
      textCounter++;
    }
    
    
   }
   else
   {
    SerialWriteLog(F("[ERROR] File not found"));
    return 0;
   }
   return 1;
}

#endif
