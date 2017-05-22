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


#ifndef PortExpander_h
#define PortExpander_h

void SetupPortExpander()
{
   Wire.begin(); // wake up I2C bus
   
   Wire.beginTransmission(0x20);
   Wire.write((byte)0x00); // IODIRA register
   Wire.write((byte)0x00); // set all of port A to outputs
   //Wire.endTransmission();
   //Wire.beginTransmission(0x20);
   //Wire.write((byte)0x01); // IODIRB register
   Wire.write((byte)0x00); // set all of port B to outputs
   Wire.endTransmission();

   /*Wire.beginTransmission(0x21);
   Wire.write((byte)0x00); // IODIRA register
   Wire.write((byte)0x00); // set all of port A to outputs
   Wire.endTransmission();
   Wire.beginTransmission(0x21);
   Wire.write((byte)0x01); // IODIRB register
   Wire.write((byte)0x00); // set all of port B to outputs
   Wire.endTransmission();

   Wire.beginTransmission(0x22);
   Wire.write((byte)0x00); // IODIRA register
   Wire.write((byte)0x00); // set all of port A to outputs
   Wire.endTransmission();
   Wire.beginTransmission(0x22);
   Wire.write((byte)0x01); // IODIRB register
   Wire.write((byte)0x00); // set all of port B to outputs
   Wire.endTransmission();*/
}

#endif



