//Slave Node(Send/Write Data)
#include <Wire.h>
#define sensor1 3
#define sensor2 4
#define sensor3 5
#define sensor4 6
#define sensor5 7
#define sensor6 8
#define sensor7 9
#define sensor8 10
#define sensor9 11

char arr[9] = {};
int detect1 = HIGH;
int detect2 = HIGH;
int detect3 = HIGH;
int detect4 = HIGH;
int detect5 = HIGH;
int detect6 = HIGH;
int detect7 = HIGH;
int detect8 = HIGH;
int detect9 = HIGH;

void setup() {
 pinMode(sensor1,INPUT);
 pinMode(sensor2,INPUT);
 pinMode(sensor3,INPUT);
 pinMode(sensor4,INPUT);
 pinMode(sensor5,INPUT);
 pinMode(sensor6,INPUT);
 pinMode(sensor7,INPUT);
 pinMode(sensor8,INPUT);
 pinMode(sensor9,INPUT);
 Wire.begin(8);                /* join i2c bus with address 8 */
 Wire.onRequest(requestEvent); /* register request event */
 Serial.begin(9600);
 Serial.println("begin");
}

void loop() {
 delay(100);
}

// function that executes whenever data is requested from master
void requestEvent() {
 detect1 = digitalRead(sensor1);
 detect2 = digitalRead(sensor2);
 detect3 = digitalRead(sensor3);
 detect4 = digitalRead(sensor4);
 detect5 = digitalRead(sensor5);
 detect6 = digitalRead(sensor6);
 detect7 = digitalRead(sensor7);
 detect8 = digitalRead(sensor8);
 detect9 = digitalRead(sensor9);

 if(detect1 == LOW){
   arr[0] = 'A';
 }
 else
  arr[0] = 'a';
     
 if(detect2 == LOW){
   arr[1] = 'B';
 }
 else
   arr[1] = 'b';
   
 if(detect3 == LOW){
   arr[2] = 'C';
 }
 else
   arr[2] = 'c';

 if(detect4 == LOW){
   arr[3] = 'D';
 }
 else
   arr[3] = 'd';

if(detect5 == LOW){
   arr[4] = 'E';
 }
 else
   arr[4] = 'e';

if(detect6 == LOW){
   arr[5] = 'F';
 }
 else
   arr[5] = 'f';

if(detect7 == LOW){
   arr[6] = 'G';
 }
 else
   arr[6] = 'g';

if(detect8 == LOW){
   arr[7] = 'H';
 }
 else
   arr[7] = 'h';

if(detect9 == LOW){
   arr[8] = 'I';
 }
 else
   arr[8] = 'i';

 Wire.write(arr);
}
