//  This file is part of AC2Car.org Track Driver.
//  Bryan Thomas 2010 - bryan.r.thomas@gmail.com
//
//  AC2Car.org Track Driver is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  AC2Car.org Track Driver is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with AC2Car.org Track Driver.  If not, see <http://www.gnu.org/licenses/>.


//  Hardware connections
//  Arduino - Motor Board (Pololu VNH2/3SP30)
//  2 - PWM
//  3 - INA
//  4 - ENA 
//  5 - INB
//  6 - ENB
//  5V - 5V
//  GND - GND


int ledPin = 13;
int pwmPin = 2;
int inaPin = 3;
int enaPin = 4;
int inbPin = 5;
int enbPin = 6;

void setup()
{
  // set the pin modes to outputs
  pinMode(ledPin, OUTPUT);
  pinMode(pwmPin, OUTPUT);
  pinMode(inaPin, OUTPUT);
  pinMode(enaPin, OUTPUT);
  pinMode(inbPin, OUTPUT);
  pinMode(enbPin, OUTPUT);
  
  // set the VNH2/3 to be disabled
  digitalWrite(pwmPin, LOW);
  // set the VNH2/3 to CW
  digitalWrite(inaPin, HIGH);
  digitalWrite(inbPin, LOW);
  digitalWrite(enaPin, HIGH);
  digitalWrite(enbPin, HIGH);
    
}

void loop()
{
  // CW
  // ina 1
  // inb 0
  
  // disable and set to CW
  digitalWrite(pwmPin, LOW);
  digitalWrite(inaPin, HIGH);
  digitalWrite(inbPin, LOW);
  // enable and delay PERIOD
  digitalWrite(pwmPin, HIGH);
  delay(10);
  
  // CCW
  // ina 0
  // inb 1
  digitalWrite(pwmPin, LOW);
  digitalWrite(inaPin, LOW);
  digitalWrite(inbPin, HIGH);
  
  // enable and delay PERIOD
  digitalWrite(pwmPin, HIGH);
  delay(10);
  
}
