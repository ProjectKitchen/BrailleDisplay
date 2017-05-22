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

#ifndef BrailleCell_h
#define BrailleCell_h

#include "Settings.h"

#define Transistor5V_Pin 21
#define TransistorGND_Pin 20

#define BrailleTime 50

void setBrailleDotState(byte address, byte port, byte pin);
void clearAllBrailleCells();

//Cell 1

#define BrailleCell_1_1_Expander 0x20
#define BrailleCell_1_1_PORT 0x12
#define BrailleCell_1_1_PIN 0b00000001
#define BrailleCell_1_2_Expander 0x20
#define BrailleCell_1_2_PORT 0x12
#define BrailleCell_1_2_PIN 0b00000010
#define BrailleCell_1_3_Expander 0x20
#define BrailleCell_1_3_PORT 0x12
#define BrailleCell_1_3_PIN 0b00000100
#define BrailleCell_1_4_Expander 0x20
#define BrailleCell_1_4_PORT 0x12
#define BrailleCell_1_4_PIN 0b00000001
#define BrailleCell_1_5_Expander 0x20
#define BrailleCell_1_5_PORT 0x12
#define BrailleCell_1_5_PIN 0b00001000
#define BrailleCell_1_6_Expander 0x20
#define BrailleCell_1_6_PORT 0x12
#define BrailleCell_1_6_PIN 0b01000000

void SetupBraille()
{
  pinMode(Transistor5V_Pin, OUTPUT);
  pinMode(TransistorGND_Pin, OUTPUT);
  digitalWrite(Transistor5V_Pin, LOW);
  digitalWrite(TransistorGND_Pin, LOW);
  //clearAllBrailleCells();
}

/*void SetBraille(String stringToDisplay)
{
  for(uint8_t i = 0; (stringToDisplay[i] != "") && (stringToDisplay[i] != "\n") && (i < NumberOfBrailleCells-1); i++)
  {
    stringToDisplay.toUpperCase();
    switch(stringToDisplay[i])
    {
      case 'A':
      case '1':
        SetBrailleDot(i,Braille_A_1);
        break;
      case 'B':
      case '2':
        SetBrailleDot(i,Braille_B_2);
        break;
      case 'C':
      case '3':
        SetBrailleDot(i,Braille_C_3);
        break;
      case 'D': 
      case '4':
        SetBrailleDot(i,Braille_D_4);
        break;
      case 'E':
      case '5':
        SetBrailleDot(i,Braille_E_5);
        break;
      case 'F':
      case '6':
        SetBrailleDot(i,Braille_F_6);
        break;
      case 'G':
      case '7':
        SetBrailleDot(i,Braille_G_7);
        break;
      case 'H':
      case '8':
        SetBrailleDot(i,Braille_H_8);
        break;
      case 'I':
      case '9':
        SetBrailleDot(i,Braille_I_9);
        break;
      case 'J':
      case '0':
        SetBrailleDot(i,Braille_J_0);
        break;  
      case 'K':
        SetBrailleDot(i,Braille_K);
        break;
      case 'L':
        SetBrailleDot(i,Braille_L);
        break;
      case 'M':
        SetBrailleDot(i,Braille_M);
        break;
      case 'N':
        SetBrailleDot(i,Braille_N);
        break;
      case 'O':
        SetBrailleDot(i,Braille_O);
        break;
      case 'P':
        SetBrailleDot(i,Braille_P);
        break;
      case 'Q':
        SetBrailleDot(i,Braille_Q);
        break;
      case 'R':
        SetBrailleDot(i,Braille_R);
        break;
      case 'S':
        SetBrailleDot(i,Braille_S);
        break;
      case 'T':
        SetBrailleDot(i,Braille_T);
        break;
      case 'U':
        SetBrailleDot(i,Braille_U);
        break;
      case 'V':
        SetBrailleDot(i,Braille_V);
        break;
      case 'W':
        SetBrailleDot(i,Braille_W);
        break;
      case 'X':
        SetBrailleDot(i,Braille_X);
        break;
      case 'Y':
        SetBrailleDot(i,Braille_Y);
        break;
      case 'Z':
        SetBrailleDot(i,Braille_Z);
        break;
    }
  }
}*/


void SetBrailleDot(uint8_t cell, uint8_t state)
{
  switch(cell)
  {
    case 1:   // Braille Cell 1        
      for(uint8_t dot = 1; dot<7; dot++)
      {
        if(state & (1<<(dot-1)))
        {
          switch(dot)
          {
            case 1:
              setBrailleDotState(BrailleCell_1_1_Expander, BrailleCell_1_1_PORT, (byte)(BrailleCell_1_1_PIN));
              break;
            case 2:
              setBrailleDotState(BrailleCell_1_2_Expander, BrailleCell_1_2_PORT, (byte)(BrailleCell_1_2_PIN));
              break;
            case 3:
              setBrailleDotState(BrailleCell_1_3_Expander, BrailleCell_1_3_PORT, (byte)(BrailleCell_1_3_PIN));
              break;
            case 4:
              setBrailleDotState(BrailleCell_1_4_Expander, BrailleCell_1_4_PORT, (byte)(BrailleCell_1_4_PIN));
              break;
            case 5:
              setBrailleDotState(BrailleCell_1_5_Expander, BrailleCell_1_5_PORT, (byte)(BrailleCell_1_5_PIN));
              break;
            case 6:
              setBrailleDotState(BrailleCell_1_6_Expander, BrailleCell_1_6_PORT, (byte)(BrailleCell_1_6_PIN));
              break;
          }
        }        
      }
      break;
  }
}

void ClearBrailleDotState(byte address, byte port, byte pin)
{
  digitalWrite(Transistor5V_Pin, LOW);
  digitalWrite(TransistorGND_Pin, HIGH);
  
  Wire.beginTransmission((byte)address);
  Wire.write((byte)port); // address port
  Wire.write((byte)pin);  // value to send
  Wire.endTransmission();
  
  delay(BrailleTime);

  digitalWrite(TransistorGND_Pin, LOW);
  digitalWrite(Transistor5V_Pin, LOW);  
  
  Wire.beginTransmission((byte)address);
  Wire.write((byte)port); // address port
  Wire.write((byte)0x00);  // value to send
  Wire.endTransmission();
}

void setBrailleDotState(byte address, byte port, byte pin)
{
  digitalWrite(Transistor5V_Pin, LOW);  
  digitalWrite(TransistorGND_Pin, LOW);
  
  Wire.beginTransmission((byte)address);
  Wire.write((byte)port); // address port
  Wire.write((byte)(~pin));  // value to send
  Wire.endTransmission();


  
  digitalWrite(TransistorGND_Pin, LOW);
  digitalWrite(Transistor5V_Pin, HIGH);
  
  delay(BrailleTime);
  
  digitalWrite(TransistorGND_Pin, LOW);
  digitalWrite(Transistor5V_Pin, LOW);
  
  Wire.beginTransmission((byte)address);
  Wire.write((byte)port); // address port
  Wire.write((byte)0x00);  // value to send
  Wire.endTransmission();
  
 
}

void clearAllBrailleCells()
{
  for(uint8_t cell = 1; cell < NumberOfBrailleCells; cell++)
  {
    switch(cell)
    {
      case 1:   // Braille Cell 1        
        for(uint8_t dot = 1; dot<7; dot++)
        {
            switch(dot)
            {
              case 1:
                ClearBrailleDotState(BrailleCell_1_1_Expander, BrailleCell_1_1_PORT, (byte)(BrailleCell_1_1_PIN));
                break;
              case 2:
                ClearBrailleDotState(BrailleCell_1_2_Expander, BrailleCell_1_2_PORT, (byte)(BrailleCell_1_2_PIN));
                break;
              case 3:
                ClearBrailleDotState(BrailleCell_1_3_Expander, BrailleCell_1_3_PORT, (byte)(BrailleCell_1_3_PIN));
                break;
              case 4:
                ClearBrailleDotState(BrailleCell_1_4_Expander, BrailleCell_1_4_PORT, (byte)(BrailleCell_1_4_PIN));
                break;
              case 5:
                ClearBrailleDotState(BrailleCell_1_5_Expander, BrailleCell_1_5_PORT, (byte)(BrailleCell_1_5_PIN));
                break;
              case 6:
                ClearBrailleDotState(BrailleCell_1_6_Expander, BrailleCell_1_6_PORT, (byte)(BrailleCell_1_6_PIN));
                break;
            }     
        }
        break;
    }
  }  
}

#endif
