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


#ifndef RTC_h
#define RTC_h

#define DS1307_I2C_ADDRESS 0x68

void setDS1307time(byte second, byte minute, byte hour, byte dayOfWeek, byte dayOfMonth, byte month, byte year);


// Convert normal decimal numbers to binary coded decimal
byte decToBcd(byte val)
{
  return( (val/10*16) + (val%10) );
}

// Convert binary coded decimal to normal decimal numbers
byte bcdToDec(byte val)
{
  return( (val/16*10) + (val%16) );
}

void setupRTC()
{
  Wire.begin();
  // set the initial time here:
  // DS1307 seconds, minutes, hours, day, date, month, year
    // setDS1307time(0,02,14,4,3,5,17);
}


void setDS1307time(byte second, byte minute, byte hour, byte dayOfWeek, byte dayOfMonth, byte month, byte year)
{
  // sets time and date data to DS1307
  Wire.beginTransmission(DS1307_I2C_ADDRESS);
  Wire.write(0); // set next input to start at the seconds register
  Wire.write(decToBcd(second)); // set seconds
  Wire.write(decToBcd(minute)); // set minutes
  Wire.write(decToBcd(hour)); // set hours
  Wire.write(decToBcd(dayOfWeek)); // set day of week (1=Sunday, 7=Saturday)
  Wire.write(decToBcd(dayOfMonth)); // set date (1 to 31)
  Wire.write(decToBcd(month)); // set month
  Wire.write(decToBcd(year)); // set year (0 to 99)
  Wire.endTransmission();
}

void readDS1307time(byte *second, byte *minute, byte *hour, byte *dayOfWeek, byte *dayOfMonth, byte *month, byte *year) 
{
  Wire.beginTransmission(DS1307_I2C_ADDRESS);
  Wire.write(0); // set DS1307 register pointer to 00h
  Wire.endTransmission();
  Wire.requestFrom(DS1307_I2C_ADDRESS, 7);
  // request seven bytes of data from DS1307 starting from register 00h
  *second = bcdToDec(Wire.read() & 0x7f);
  *minute = bcdToDec(Wire.read());
  *hour = bcdToDec(Wire.read() & 0x3f);
  *dayOfWeek = bcdToDec(Wire.read());
  *dayOfMonth = bcdToDec(Wire.read());
  *month = bcdToDec(Wire.read());
  *year = bcdToDec(Wire.read());
}

void displayDate()
{
  byte second, minute, hour, dayOfWeek, dayOfMonth, month, year;
  // retrieve data from DS1307
  readDS1307time(&second, &minute, &hour, &dayOfWeek, &dayOfMonth, &month,
  &year);

  sprintf(brailleTextToShow, "%02d.%02d.%02d", dayOfMonth, month,year);
  
}

void displayDay()
{
  byte second, minute, hour, dayOfWeek, dayOfMonth, month, year;
  // retrieve data from DS1307
  readDS1307time(&second, &minute, &hour, &dayOfWeek, &dayOfMonth, &month,
  &year);
  
  String dayOfWeekName = "         ";

 switch(dayOfWeek)
  {
    case 1:
      dayOfWeekName = "Sunday";
      break;
    case 2:
      dayOfWeekName="Monday";
      break;
    case 3:
      dayOfWeekName="Tuesday";
      break;
    case 4:
      dayOfWeekName="Wednesda";
      break;
    case 5:
      dayOfWeekName="Thursday";
      break;
    case 6:
      dayOfWeekName="Friday";
      break;
    case 7:
      dayOfWeekName="Saturday";
      break;
  }

  strcpy(brailleTextToShow,dayOfWeekName.c_str());
  
}

void displayTime()
{
  byte second, minute, hour, dayOfWeek, dayOfMonth, month, year;
  // retrieve data from DS1307
  readDS1307time(&second, &minute, &hour, &dayOfWeek, &dayOfMonth, &month,
  &year);
  // send it to the serial monitor


  //snprintf(brailleTextToShow, NumberOfBrailleCells, "%d:%d:%d", hour, minute,second);
  sprintf( brailleTextToShow, "%02d:%02d:%02d", hour, minute,second);

  /*
  Serial.print(hour, DEC);
  // convert the byte variable to a decimal number when displayed
  Serial.print(":");
  if (minute<10)
  {
    Serial.print("0");
  }
  Serial.print(minute, DEC);
  Serial.print(":");
  if (second<10)
  {
    Serial.print("0");
  }
  Serial.print(second, DEC);*/
}
  
#endif
