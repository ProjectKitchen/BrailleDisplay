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


#include <Arduino.h>

#ifndef KeyBoard_h
#define KeyBoard_h

#include "BrailleText.h"
#include "Menu.h"
#include "SD_Card.h"

//KeyBoard
#define KeyBoard_Expander_KB 0x24 
#define KeyBoard_1_PORT 0x12
#define KeyBoard_1_PIN 0b00000001
#define KeyBoard_2_PORT 0x12
#define KeyBoard_2_PIN 0b00000010
#define KeyBoard_3_PORT 0x12
#define KeyBoard_3_PIN 0b00000100
#define KeyBoard_4_PORT 0x12
#define KeyBoard_4_PIN 0b00001000
#define KeyBoard_5_PORT 0x12
#define KeyBoard_5_PIN 0b00010000
#define KeyBoard_6_PORT 0x12
#define KeyBoard_6_PIN 0b00100000
#define KeyBoard_7_PORT 0x12
#define KeyBoard_7_PIN 0b01000000
#define KeyBoard_8_PORT 0x12
#define KeyBoard_8_PIN 0b10000000

//KeyBoard
#define KeyBoard_Expander_CNTRL 0x24 
#define KeyBoard_SPACE_PORT 0x13
#define KeyBoard_SPACE_PIN 0b00000001
#define KeyBoard_ARROW_UP_PORT 0x13
#define KeyBoard_ARROW_UP_PIN 0b00000010
#define KeyBoard_ARROW_DOWN_PORT 0x13
#define KeyBoard_ARROW_DOWN_PIN 0b00000100
#define KeyBoard_ARROW_LEFT_PORT 0x13
#define KeyBoard_ARROW_LEFT_PIN 0b00001000
#define KeyBoard_ARROW_RIGHT_PORT 0x13
#define KeyBoard_ARROW_RIGHT_PIN 0b00010000
#define KeyBoard_SELECT_PORT 0x13
#define KeyBoard_SELECT_PIN 0b00100000
#define KeyBoard_MENU_PORT 0x13
#define KeyBoard_MENU_PIN 0b01000000
#define KeyBoard_BACKSPACE_PORT 0x13
#define KeyBoard_BACKSPACE_PIN 0b10000000

#define KeyBoard_PAN_LEFT_PORT 5
#define KeyBoard_PAN_RIGHT_PORT 4



//KeyBoard
#define KeyBoard_SPACE       0x100
#define KeyBoard_ARROW_UP    0x200
#define KeyBoard_ARROW_DOWN  0x400
#define KeyBoard_ARROW_LEFT  0x800
#define KeyBoard_ARROW_RIGHT 0x1000
#define KeyBoard_SELECT      0x2000
#define KeyBoard_MENU        0x4000
#define KeyBoard_BACKSPACE   0x8000
#define KeyBoard_PAN_LEFT    0x10000
#define KeyBoard_PAN_RIGHT   0x20000


uint32_t kbState;
uint8_t kbState_Same;

void SetUpKeyboard()     
{
  Wire.begin();
  Wire.beginTransmission(KeyBoard_Expander_KB); //begins talking to the slave device
   Wire.write(0x0C); // set MCP23017 memory pointer to GPIOB address
   Wire.write(0xFF);
   Wire.endTransmission();
   Wire.beginTransmission(KeyBoard_Expander_CNTRL);
   Wire.write(0x0D); // set MCP23017 memory pointer to GPIOB address
   Wire.write(0xFF);
   Wire.endTransmission();

   kbState_Same = 0;

   //Setup Panning Buttons
   pinMode(KeyBoard_PAN_LEFT_PORT, INPUT);
   digitalWrite(KeyBoard_PAN_LEFT_PORT, HIGH);
   pinMode(KeyBoard_PAN_RIGHT_PORT, INPUT);
   digitalWrite(KeyBoard_PAN_RIGHT_PORT, HIGH);
}

uint32_t getKeyBoard()
{
   Wire.beginTransmission(KeyBoard_Expander_KB);
   Wire.write(0x12); // set MCP23017 memory pointer to GPIOB address
   Wire.endTransmission();
   Wire.requestFrom(KeyBoard_Expander_KB, 1); // request one byte of data from MCP20317
   uint8_t inputsKB = ~ Wire.read(); // store the incoming byte into "inputs"

   Wire.beginTransmission(KeyBoard_Expander_CNTRL);
   Wire.write(0x13); // set MCP23017 memory pointer to GPIOB address
   Wire.endTransmission();
   Wire.requestFrom(KeyBoard_Expander_CNTRL, 1); // request one byte of data from MCP20317
   uint8_t inputsCNTRL = ~ Wire.read(); // store the incoming byte into "inputs"


  //get Pan ButTon
  uint8_t inputsPAN = 0x00;
  if(!digitalRead(KeyBoard_PAN_LEFT_PORT))
  {
    inputsPAN = inputsPAN | 0b00000001;
  }
  if(!digitalRead(KeyBoard_PAN_RIGHT_PORT))
  {
    inputsPAN = inputsPAN | 0b00000010;  
  }

  return (inputsKB | ((uint32_t)inputsCNTRL<<8) | ((uint32_t)inputsPAN<<16));
   
}

void checkKeyBoardState()
{
  /*if(kbState == getKeyBoard())
  {
    kbState_Same++;
    if(kbState_Same<10)
    {
      return;
    }    
  }
  kbState_Same = 0;*/
  
  kbState = 0x00;
  for(uint8_t i = 0; i <10; i++)
  {
    kbState = kbState | getKeyBoard();    
    if(!kbState) return;    
    delay(20);
  }

  
  
  switch(kbState)
  {
  // Commands

    case KeyBoard_SPACE:
      SerialWriteLog(F("[KEY] SPACE"));
      Keyboard.write(' ');
      
      break;
    case KeyBoard_ARROW_UP:
      SerialWriteLog(F("[KEY] ARROW UP"));

      switch(mode)
      {
        case 0:
          Keyboard.write(KEY_UP_ARROW);
          break;
        case 1:
          break;
        case 2:          
          break;
        case 100:
          switchMenu(1);
          break;
        
      }
      
      break;
      case KeyBoard_ARROW_DOWN:
      SerialWriteLog(F("[KEY] ARROW DOWN"));
      
      switch(mode)
      {
        case 0:
          Keyboard.write(KEY_DOWN_ARROW);
          break;
        case 100:
          switchMenu(2);
          break;
        
      }      
      
      break;
      
    case KeyBoard_ARROW_LEFT:
      SerialWriteLog(F("[KEY] ARROW LEFT"));

       switch(mode)
       {
        case 0:
          Keyboard.write(KEY_LEFT_ARROW);
          break;
        case 100:
          switchMenu(2);
          break;
        
        }  
      break;
      
     case KeyBoard_ARROW_RIGHT:
      SerialWriteLog(F("[KEY] ARROW RIGHT"));

       switch(mode)
      {
        case 0:
          Keyboard.write(KEY_RIGHT_ARROW);
          break;
        case 2:         
          break;
        case 100:
          switchMenu(1);
          break;
        
      }  
      break; 
      
    case KeyBoard_SELECT:
      SerialWriteLog(F("[KEY] SELECT"));

      switch(mode)
      {
        case 7:
          Calc();
          break;
        case 100:
          SelectMenu();
          break;
        
      }
      
      break;   
      
    case KeyBoard_MENU:
        SerialWriteLog(F("[KEY] MENU"));

        mode = 100; // mode in menu
        ShowSelectedMenu(); 
        
        
      break;
      
    case KeyBoard_BACKSPACE:    
          SerialWriteLog(F("[KEY] BACKSPACE"));
          
          if(mode == 7)
          {
           
            if(calcPos>0)
            {
               calcPos--;
               brailleTextCalc[calcPos] = '\0';
            }            
            showCalc();
            requireDisplayUpdate = 1;
          }
          else
          {
            Keyboard.write(KEY_BACKSPACE);
          }     
          
      break;

    case KeyBoard_PAN_LEFT:
        SerialWriteLog(F("[KEY] PAN LEFT"));
        switch(mode)
        {
          case 0:
          case 1:
            if(TextPosition >= NumberOfBrailleCells)
            {
              TextPosition -= NumberOfBrailleCells;
            }
            PrepareBrailleTextFromBuffer();
            requireDisplayUpdate = 1;
            break;
          case 2:   
            if(myFilePos>=16)
            {
              myFilePos = myFilePos -  16;
              myFile.seek(myFilePos);
              ReadByteFromFile();
              requireDisplayUpdate = 1;              
            }       
            break;
          case 6:
            ChangeFrequency(2);
            showRadio();
            requireDisplayUpdate = 1;
            break;
        }
          
        
      break;
      
    case KeyBoard_PAN_RIGHT:  
        SerialWriteLog(F("[KEY] PAN RIGHT"));
        switch(mode)
        {
          case 0:
          case 1:
            
            if(TextPosition <= (StringBufferSize - NumberOfBrailleCells -1))
            {              
              if(brailleText[ TextPosition + NumberOfBrailleCells] != '\0')
              {
               
              TextPosition += NumberOfBrailleCells; 
              }
            }
            PrepareBrailleTextFromBuffer();
            requireDisplayUpdate = 1;
            break;
          case 2:
             ReadByteFromFile();   
             requireDisplayUpdate = 1;          
             break;
          case 6:
            ChangeFrequency(1);       
            showRadio();    
            requireDisplayUpdate = 1;
            break;
        }
      break;
  
   
      

    // Braille Inputs
    
    case Braille_A:
      SerialWriteLog(F("[KEY] A"));
      Keyboard.write('A');
      break;
    case Braille_B:
      SerialWriteLog(F("[KEY] B"));
      Keyboard.write('B');
      break;
    case Braille_C:
      SerialWriteLog(F("[KEY] C"));
      Keyboard.write('C');
      break;
    case Braille_D:
    SerialWriteLog(F("[KEY] D"));
      Keyboard.write('D');
      break;
    case Braille_E:
      SerialWriteLog(F("[KEY] E"));
      Keyboard.write('E');
      break;
    case Braille_F:
      SerialWriteLog(F("[KEY] F"));
      Keyboard.write('F');
      break;
    case Braille_G:
      SerialWriteLog(F("[KEY] G"));
      Keyboard.write('G');
      break;
    case Braille_H:
      SerialWriteLog(F("[KEY] H"));
      Keyboard.write('H');
      break;
    case Braille_I:
      SerialWriteLog(F("[KEY] I"));
      Keyboard.write('I');
      break;
    case Braille_J:
      SerialWriteLog(F("[KEY] J"));
      Keyboard.write('J');
      break;
    case Braille_K:
      SerialWriteLog(F("[KEY] K"));
      Keyboard.write('K');
      break;
    case Braille_L:
      SerialWriteLog(F("[KEY] L"));
      Keyboard.write('L');
      break;
    case Braille_M:
      SerialWriteLog(F("[KEY] M"));
      Keyboard.write('M');
      break;
    case Braille_N:
      SerialWriteLog(F("[KEY] N"));
      Keyboard.write('N');
      break;
    case Braille_O:
      SerialWriteLog(F("[KEY] O"));
      Keyboard.write('O');
      break;
    case Braille_P:
      SerialWriteLog(F("[KEY] P"));
      Keyboard.write('P');
      break;
    case Braille_Q:
      SerialWriteLog(F("[KEY] Q"));
      Keyboard.write('Q');
      break;
    case Braille_R:
      SerialWriteLog(F("[KEY] R"));
      Keyboard.write('R');
      break;
    case Braille_S:
      SerialWriteLog(F("[KEY] S"));
      Keyboard.write('S');
      break;
    case Braille_T:
      SerialWriteLog(F("[KEY] T"));
      Keyboard.write('T');
      break;
    case Braille_U:
      SerialWriteLog(F("[KEY] U"));
      Keyboard.write('U');
      break;
    case Braille_V:
      SerialWriteLog(F("[KEY] V"));
      Keyboard.write('V');
      break;
    case Braille_W:
      SerialWriteLog(F("[KEY] W"));
      Keyboard.write('W');
      break;
    case Braille_X:
      SerialWriteLog(F("[KEY] X"));
      Keyboard.write('X');
      break;
    case Braille_Y:
      SerialWriteLog(F("[KEY] Y"));
      Keyboard.write('Y');
      break;
    case Braille_Z:
      SerialWriteLog(F("[KEY] Z"));
      Keyboard.write('Z');
      break;

    case Braille_a_1:
      switch(mode)
      {
        case 6:   // Radio
          frequency = Radio_P1;
          setFrequency();
          showRadio();
          requireDisplayUpdate = 1;
          break;
        case 7:   // Calc
          SerialWriteLog(F("[KEY] 1"));        
          if(calcPos<31)
          {
            brailleTextCalc[calcPos] = '1';
            calcPos++;
          } 
          showCalc();
          requireDisplayUpdate = 1;
          break;
        default:
          SerialWriteLog(F("[KEY] a"));
          Keyboard.write('a');     
      }
      break;
    case Braille_b_2:
        switch(mode)
        {          
          case 7:   // Calc
            SerialWriteLog(F("[KEY] 2"));        
            if(calcPos<31)
            {
              brailleTextCalc[calcPos] = '2';
              calcPos++;
            } 
            showCalc();
            requireDisplayUpdate = 1;
            break;
          default:
             SerialWriteLog(F("[KEY] b"));
             Keyboard.write('b');
        }     
   
      break;
    case Braille_c_3:
        switch(mode)
        {          
          case 7:   // Calc
            SerialWriteLog(F("[KEY] 3"));       
            if(calcPos<31)
            {
               brailleTextCalc[calcPos] = '3';
               calcPos++;
            } 
            showCalc();
            requireDisplayUpdate = 1;
            break;
          default:
            SerialWriteLog(F("[KEY] c"));
            Keyboard.write('c');
        }    
      break;
    case Braille_d_4:

        switch(mode)
        {          
          case 7:   // Calc
            SerialWriteLog(F("[KEY] 4"));        
            if(calcPos<31)
            {
              brailleTextCalc[calcPos] = '4';
              calcPos++;
            } 
            showCalc();
            requireDisplayUpdate = 1;
            break;
          default:
             SerialWriteLog(F("[KEY] d"));
             Keyboard.write('d');
        }   
      break;
    case Braille_e_5:

        switch(mode)
        {          
          case 7:   // Calc
             SerialWriteLog(F("[KEY] 5"));       
            if(calcPos<31)
            {
               brailleTextCalc[calcPos] = '5';
               calcPos++;
            } 
            showCalc();
            requireDisplayUpdate = 1;
            break;
          default:
            SerialWriteLog(F("[KEY] e"));
            Keyboard.write('e');
        }    
      break;
    case Braille_f_6:

        switch(mode)
        {          
          case 7:   // Calc
            SerialWriteLog(F("[KEY] 6"));        
            if(calcPos<31)
            {
              brailleTextCalc[calcPos] = '6';
              calcPos++;
            } 
            showCalc();
            requireDisplayUpdate = 1;
            break;
          default:
            SerialWriteLog(F("[KEY] f"));
            Keyboard.write('f');
        }   
      break;
    case Braille_g_7:

        switch(mode)
        {          
          case 7:   // Calc
            SerialWriteLog(F("[KEY] 7"));        
            if(calcPos<31)
            {
              brailleTextCalc[calcPos] = '7';
              calcPos++;
            } 
            showCalc();
            requireDisplayUpdate = 1;
            break;
          default:
            SerialWriteLog(F("[KEY] g"));
            Keyboard.write('g');
        }    
      break;
    case Braille_h_8:    
        switch(mode)
        {          
          case 7:   // Calc
            SerialWriteLog(F("[KEY] 8"));        
            if(calcPos<31)
            {
              brailleTextCalc[calcPos] = '8';
              calcPos++;
            } 
            showCalc();
            requireDisplayUpdate = 1;
            break;
          default:
            SerialWriteLog(F("[KEY] h"));
            Keyboard.write('h');
        }      
      break;
    case Braille_i_9:
      if(mode == 7)
      {
        SerialWriteLog(F("[KEY] 9"));        
        if(calcPos<31)
        {
          brailleTextCalc[calcPos] = '9';
          calcPos++;
        } 
        showCalc();
        requireDisplayUpdate = 1;
      }
      else
      {
        SerialWriteLog(F("[KEY] i"));
        Keyboard.write('i');
      }
      break;
    case Braille_j_0:
      if(mode == 7)
      {
        SerialWriteLog(F("[KEY] 0"));        
        if(calcPos<31)
        {
              brailleTextCalc[calcPos] = '0';
              calcPos++;
        }
        showCalc();
        requireDisplayUpdate = 1;
      }
      else
      {
        SerialWriteLog(F("[KEY] j"));
        Keyboard.write('j');
      }
      break;
    case Braille_k:
      SerialWriteLog(F("[KEY] k"));
      Keyboard.write('k');
      break;
    case Braille_l:
      SerialWriteLog(F("[KEY] l"));
      Keyboard.write('l');
      break;
    case Braille_m:
      SerialWriteLog(F("[KEY] m"));
      Keyboard.write('m');
      break;
    case Braille_n:
      SerialWriteLog(F("[KEY] n"));
      Keyboard.write('n');
      break;
    case Braille_o:
      SerialWriteLog(F("[KEY] o"));
      Keyboard.write('o');
      break;
    case Braille_p:
      SerialWriteLog(F("[KEY] p"));
      Keyboard.write('p');
      break;
    case Braille_q:
      SerialWriteLog(F("[KEY] q"));
      Keyboard.write('q');
      break;
    case Braille_r:
      SerialWriteLog(F("[KEY] r"));
      Keyboard.write('r');
      break;
    case Braille_s:
      SerialWriteLog(F("[KEY] s"));
      Keyboard.write('s');
      break;
    case Braille_t:
      SerialWriteLog(F("[KEY] t"));
      Keyboard.write('t');
      break;
    case Braille_u:
      SerialWriteLog(F("[KEY] u"));
      Keyboard.write('u');
      break;
    case Braille_v:
      SerialWriteLog(F("[KEY] v"));
      Keyboard.write('v');
      break;
    case Braille_w:
      SerialWriteLog(F("[KEY] w"));
      Keyboard.write('w');
      break;
    case Braille_x:
      SerialWriteLog(F("[KEY] x"));
      Keyboard.write('x');
      break;
    case Braille_y:
      SerialWriteLog(F("[KEY] y"));
      Keyboard.write('y');
      break;
    case Braille_z:
      SerialWriteLog(F("[KEY] z"));
      Keyboard.write('z');
      break;
      
    

    case Braille_TIMES:
      if(mode == 7)
      {
        SerialWriteLog(F("[KEY] *"));        
        if(calcPos<31)
        {
              brailleTextCalc[calcPos] = '*';
              calcPos++;
        }
        showCalc();
        requireDisplayUpdate = 1;
      }
      break;
    case Braille_PLUS:
      if(mode == 7)
      {
        SerialWriteLog(F("[KEY] +"));        
        if(calcPos<31)
        {
              brailleTextCalc[calcPos] = '+';
              calcPos++;
        }
        showCalc();
        requireDisplayUpdate = 1;
      }
      break; 
  
      

    case Braille_COLON:
        switch(mode)
        {
          case 6:   // Radio
            frequency = Radio_P2;
            setFrequency();
            showRadio();
            requireDisplayUpdate = 1;
            break;         
          default:
             SerialWriteLog(F("[KEY] ,"));
              Keyboard.write(',');
        }      
      break;
    case Braille_SEMICOLON:
      SerialWriteLog(F("[KEY] ;"));
      Keyboard.write(';');
      break;
    case Braille_DIVIDE:
      if(mode == 7)
      {
        SerialWriteLog(F("[KEY] /"));        
        if(calcPos<31)
        {
              brailleTextCalc[calcPos] = '/';
              calcPos++;
        }
        showCalc();
        requireDisplayUpdate = 1;
      }
      else
      {
        SerialWriteLog(F("[KEY] /"));
        Keyboard.write('/');
      }
       break;
    case Braille_DOUBLEPOINT:      
        SerialWriteLog(F("[KEY] :"));
        Keyboard.write(':');      
      break;
    case Braille_POINT:
        switch(mode)
        {
          case 6:   // Radio
            frequency = Radio_P3;
            setFrequency();
            showRadio();
            requireDisplayUpdate = 1;
            break;         
          default:
             SerialWriteLog(F("[KEY] ."));
             Keyboard.write('.');      
        }
      break;
    case Braille_QUESTIONMARK:
      SerialWriteLog(F("[KEY] ?"));
      Keyboard.write('?');
      break;
    case Braille_CALLINGSIGN:
      SerialWriteLog(F("[KEY] !"));
      Keyboard.write('!');
      break;
    case Braille_NUMBER:
      SerialWriteLog(F("[KEY] #"));
      Keyboard.write('#');
      break;
    case Braille_QUOTE_START:
      SerialWriteLog(F("[KEY] \""));
      Keyboard.write('"');
      break;
    case Braille_QUOTE_END:
      SerialWriteLog(F("[KEY] \""));
      Keyboard.write('"');
      break;
    case Braille_BRACKET:
      SerialWriteLog(F("[KEY] ("));
      Keyboard.write('(');
      break;
    case Braille_DASH:
      if(mode == 7)
      {
        SerialWriteLog(F("[KEY] -"));        
        if(calcPos<31)
        {
              brailleTextCalc[calcPos] = '-';
              calcPos++;
        }
        showCalc();
        requireDisplayUpdate = 1;
      }
      else
      {
        SerialWriteLog(F("[KEY] -"));
        Keyboard.write('-');
      }
      break;
    case Braille_APOSTROPH:
      switch(mode)
      {
        case 6:   // Radio
          frequency = Radio_P6;
          setFrequency();
          showRadio();
          requireDisplayUpdate = 1;
          break;
        default:
            SerialWriteLog(F("[KEY] `"));
            Keyboard.write('`');
      }
      
      break;


    case Braille_RadioButton4:
      switch(mode)
      {
        case 6:   // Radio
          frequency = Radio_P4;
          setFrequency();
          showRadio();
          requireDisplayUpdate = 1;
          break;
      }
      break;
   case Braille_RadioButton5:
      switch(mode)
      {
        case 6:   // Radio
          frequency = Radio_P5;
          setFrequency();
          showRadio();
          requireDisplayUpdate = 1;
          break;
      }
      break;   
   case Braille_RadioButton7:
      switch(mode)
      {
        case 6:   // Radio
          frequency = Radio_P7;
          setFrequency();
          showRadio();
          requireDisplayUpdate = 1;
          break;
      }
      break;
   case Braille_RadioButton8:
      switch(mode)
      {
        case 6:   // Radio
          frequency = Radio_P8;
          setFrequency();
          showRadio();
          requireDisplayUpdate = 1;
          break;
      }
      break;

  }
}

#endif



