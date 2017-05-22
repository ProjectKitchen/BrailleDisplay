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


#ifndef BrailleLookUp_h
#define BrailleLookUp_h

#define braillePin1 0b00000001
#define braillePin2 0b00000010
#define braillePin3 0b00000100
#define braillePin4 0b00001000
#define braillePin5 0b00010000
#define braillePin6 0b00100000
#define braillePin7 0b01000000
#define braillePin8 0b10000000

#define Braille_a_1 braillePin1
#define Braille_b_2 braillePin1 | braillePin2
#define Braille_c_3 braillePin1 | braillePin4
#define Braille_d_4 braillePin1 | braillePin4 | braillePin5
#define Braille_e_5 braillePin1 | braillePin5
#define Braille_f_6 braillePin1 | braillePin4 | braillePin2
#define Braille_g_7 braillePin1 | braillePin4 | braillePin2 | braillePin5
#define Braille_h_8 braillePin1 | braillePin2 | braillePin5
#define Braille_i_9 braillePin4 | braillePin2
#define Braille_j_0 braillePin4 | braillePin2 | braillePin5
#define Braille_k braillePin1 | braillePin3
#define Braille_l braillePin1 | braillePin2 | braillePin3
#define Braille_m braillePin1 | braillePin4 | braillePin3
#define Braille_n braillePin1 | braillePin4 | braillePin5 | braillePin3
#define Braille_o braillePin1 | braillePin5 | braillePin3
#define Braille_p braillePin1 | braillePin4 | braillePin2 | braillePin3
#define Braille_q braillePin1 | braillePin4 | braillePin2 | braillePin5 | braillePin3
#define Braille_r braillePin1 | braillePin2 | braillePin5 | braillePin3
#define Braille_s braillePin4 | braillePin2 | braillePin3
#define Braille_t braillePin4 | braillePin2 | braillePin5 | braillePin3
#define Braille_u braillePin1 | braillePin3 | braillePin6
#define Braille_v braillePin1 | braillePin2 | braillePin3 | braillePin6
#define Braille_w braillePin4 | braillePin2 | braillePin5 | braillePin6
#define Braille_x braillePin1 | braillePin4 | braillePin3 | braillePin6
#define Braille_y braillePin1 | braillePin4 | braillePin5 | braillePin3 | braillePin6
#define Braille_z braillePin1 | braillePin5 | braillePin3 | braillePin6

#define Braille_A braillePin1 | braillePin7
#define Braille_B braillePin1 | braillePin2 | braillePin7
#define Braille_C braillePin1 | braillePin4 | braillePin7
#define Braille_D braillePin1 | braillePin4 | braillePin5 | braillePin7
#define Braille_E braillePin1 | braillePin5 | braillePin7
#define Braille_F braillePin1 | braillePin4 | braillePin2 | braillePin7
#define Braille_G braillePin1 | braillePin4 | braillePin2 | braillePin5 | braillePin7
#define Braille_H braillePin1 | braillePin2 | braillePin5 | braillePin7
#define Braille_I braillePin4 | braillePin2 | braillePin7
#define Braille_J braillePin4 | braillePin2 | braillePin5 | braillePin7
#define Braille_K braillePin1 | braillePin3 | braillePin7
#define Braille_L braillePin1 | braillePin2 | braillePin3 | braillePin7
#define Braille_M braillePin1 | braillePin4 | braillePin3 | braillePin7
#define Braille_N braillePin1 | braillePin4 | braillePin5 | braillePin3 | braillePin7
#define Braille_O braillePin1 | braillePin5 | braillePin3 | braillePin7 | braillePin7
#define Braille_P braillePin1 | braillePin4 | braillePin2 | braillePin3 | braillePin7
#define Braille_Q braillePin1 | braillePin4 | braillePin2 | braillePin5 | braillePin3 | braillePin7
#define Braille_R braillePin1 | braillePin2 | braillePin5 | braillePin3 | braillePin7
#define Braille_S braillePin4 | braillePin2 | braillePin3 | braillePin7
#define Braille_T braillePin4 | braillePin2 | braillePin5 | braillePin3 | braillePin7
#define Braille_U braillePin1 | braillePin3 | braillePin6 | braillePin7
#define Braille_V braillePin1 | braillePin2 | braillePin3 | braillePin6 | braillePin7
#define Braille_W braillePin4 | braillePin2 | braillePin5 | braillePin6 | braillePin7
#define Braille_X braillePin1 | braillePin4 | braillePin3 | braillePin6 | braillePin7
#define Braille_Y braillePin1 | braillePin4 | braillePin5 | braillePin3 | braillePin6 | braillePin7
#define Braille_Z braillePin1 | braillePin5 | braillePin3 | braillePin6 | braillePin7

#define Braille_COLON braillePin2
#define Braille_SEMICOLON braillePin2 | braillePin3
#define Braille_DOUBLEPOINT braillePin2 | braillePin5
#define Braille_POINT braillePin3
#define Braille_QUESTIONMARK braillePin2 | braillePin6
#define Braille_CALLINGSIGN braillePin2 | braillePin5 | braillePin3
#define Braille_NUMBER braillePin4 | braillePin5 | braillePin3 | braillePin6
#define Braille_QUOTE_START braillePin2 | braillePin3 | braillePin6
#define Braille_QUOTE_END braillePin5 | braillePin3 | braillePin6
#define Braille_BRACKET braillePin2 | braillePin5 | braillePin3 | braillePin6
#define Braille_DASH braillePin3 | braillePin6
#define Braille__IE_PARAGRAPH braillePin4 | braillePin3 | braillePin6
#define Braille_APOSTROPH braillePin6

#define Braille_PLUS braillePin3 | braillePin4 | braillePin6
#define Braille_TIMES braillePin1 | braillePin6
#define Braille_DIVIDE braillePin3 | braillePin4

#define Braille_RadioButton4 braillePin4
#define Braille_RadioButton5 braillePin5
#define Braille_RadioButton6 braillePin6
#define Braille_RadioButton7 braillePin7
#define Braille_RadioButton8 braillePin8



#endif
