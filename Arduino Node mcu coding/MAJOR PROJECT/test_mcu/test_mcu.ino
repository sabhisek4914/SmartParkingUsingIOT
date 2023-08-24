//Master Node(Receive/Read Data)
#include<Wire.h>
#include <ESP8266WiFi.h>
#include <FirebaseArduino.h>

#define FIREBASE_HOST "normal-62ab7.firebaseio.com"
#define FIREBASE_AUTH "WxqhRklAht4j8Gv0D70N6QCmBsOkg79MDcAcpMWH"
#define WIFI_SSID "personal hotspot"
#define WIFI_PASSWORD "mannmath180"

char arr[9] = {};
void setup(){
 WiFi.begin(WIFI_SSID, WIFI_PASSWORD);
 Serial.print("connecting");
 while (WiFi.status() != WL_CONNECTED) {
   Serial.print(".");
   delay(500);
 }
 Serial.println();
 Serial.print("connected: ");
 Serial.println(WiFi.localIP());
  
 Firebase.begin(FIREBASE_HOST, FIREBASE_AUTH);
 
 Serial.begin(9600);
 Wire.begin(D1,D2);
}
void loop(){
 Wire.requestFrom(8,9);
 int i = 0;
 while(Wire.available()){
  arr[i] = Wire.read();
  i++;
 }
 if(arr[0] == 'a'){
  Firebase.setInt("mydata/PS1slot_1", 0);
      // handle error
      if (Firebase.failed()) {
            Serial.print("setting /PS1lot1_slot1 failed:");
            Serial.println(Firebase.error());  
            return;
      }
      delay(1000);
 }
 if(arr[0] == 'A'){
  Firebase.setInt("mydata/PS1slot_1", 1);
      // handle error
      if (Firebase.failed()) {
            Serial.print("setting /PS1lot1_slot1 failed:");
            Serial.println(Firebase.error());  
            return;
      }
      delay(1000);
 }
 if(arr[1] == 'b'){
  Firebase.setInt("mydata/PS1slot_2", 0);
      // handle error
      if (Firebase.failed()) {
            Serial.print("setting /PS1lot1_slot2 failed:");
            Serial.println(Firebase.error());  
            return;
      }
      delay(1000);
 }
 if(arr[1] == 'B'){
  Firebase.setInt("mydata/PS1slot_2", 1);
      // handle error
      if (Firebase.failed()) {
            Serial.print("setting /PS1lot1_slot2 failed:");
            Serial.println(Firebase.error());  
            return;
      }
      delay(1000);
 }
 if(arr[2] == 'c'){
  Firebase.setInt("mydata/PS1slot_3", 0);
      // handle error
      if (Firebase.failed()) {
            Serial.print("setting /PS1lot1_slot3 failed:");
            Serial.println(Firebase.error());  
            return;
      }
      delay(1000);
 }
 if(arr[2] == 'C'){
  Firebase.setInt("mydata/PS1slot_3", 1);
      // handle error
      if (Firebase.failed()) {
            Serial.print("setting /PS1lot1_slot3 failed:");
            Serial.println(Firebase.error());  
            return;
      }
      delay(1000);
 }
 if(arr[3] == 'd'){
  Firebase.setInt("mydata/PS1slot_4", 0);
      // handle error
      if (Firebase.failed()) {
            Serial.print("setting /PS1lot1_slot4 failed:");
            Serial.println(Firebase.error());  
            return;
      }
      delay(1000);
 }
 if(arr[3] == 'D'){
  Firebase.setInt("mydata/PS1slot_4", 1);
      // handle error
      if (Firebase.failed()) {
            Serial.print("setting /PS1lot1_slot4 failed:");
            Serial.println(Firebase.error());  
            return;
      }
      delay(1000);
 }
 
 if(arr[4] == 'e'){
  Firebase.setInt("mydata/PS2slot_1", 0);
      // handle error
      if (Firebase.failed()) {
            Serial.print("setting /PS2lot2_slot1 failed:");
            Serial.println(Firebase.error());  
            return;
      }
      delay(1000);
 }
 if(arr[4] == 'E'){
  Firebase.setInt("mydata/PS2slot_1", 1);
      // handle error
      if (Firebase.failed()) {
            Serial.print("setting /PS2lot2_slot1 failed:");
            Serial.println(Firebase.error());  
            return;
      }
      delay(1000);
 }
 
 if(arr[5] == 'f'){
  Firebase.setInt("mydata/PS3slot_1", 0);
      // handle error
      if (Firebase.failed()) {
            Serial.print("setting /PS3lot3_slot1 failed:");
            Serial.println(Firebase.error());  
            return;
      }
      delay(1000);
 }
 if(arr[5] == 'F'){
  Firebase.setInt("mydata/PS3slot_1", 1);
      // handle error
      if (Firebase.failed()) {
            Serial.print("setting /PS3lot3_slot1 failed:");
            Serial.println(Firebase.error());  
            return;
      }
      delay(1000);
 }
 
 if(arr[6] == 'g'){
  Firebase.setInt("mydata/PS3slot_2", 0);
      // handle error
      if (Firebase.failed()) {
            Serial.print("setting /PS3lot3_slot2 failed:");
            Serial.println(Firebase.error());  
            return;
      }
      delay(1000);
 }
 if(arr[6] == 'G'){
  Firebase.setInt("mydata/PS3slot_2", 1);
      // handle error
      if (Firebase.failed()) {
            Serial.print("setting /PS3lot3_slot2 failed:");
            Serial.println(Firebase.error());  
            return;
      }
      delay(1000);
 }
 
 if(arr[7] == 'h'){
  Firebase.setInt("mydata/PS4slot_1", 0);
      // handle error
      if (Firebase.failed()) {
            Serial.print("setting /PS4lot4_slot1 failed:");
            Serial.println(Firebase.error());  
            return;
      }
      delay(1000);
 }
 if(arr[7] == 'H'){
  Firebase.setInt("mydata/PS4slot_1", 1);
      // handle error
      if (Firebase.failed()) {
            Serial.print("setting /PS4lot4_slot1 failed:");
            Serial.println(Firebase.error());  
            return;
      }
      delay(1000);
 }
 
 if(arr[8] == 'i'){
  Firebase.setInt("mydata/PS4slot_2", 0);
      // handle error
      if (Firebase.failed()) {
            Serial.print("setting /PS4lot4_slot2 failed:");
            Serial.println(Firebase.error());  
            return;
      }
      delay(1000);
 }
 if(arr[8] == 'I'){
  Firebase.setInt("mydata/PS4slot_2", 1);
      // handle error
      if (Firebase.failed()) {
            Serial.print("setting /PS4lot4_slot2 failed:");
            Serial.println(Firebase.error());  
            return;
      }
      delay(1000);
 }
 delay(500);
}
