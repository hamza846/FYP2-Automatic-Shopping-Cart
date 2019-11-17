//*************Automatic Smart Cart*****************//
//*******Group Members:HAMZA ARIF ;BILAL AHMED  | AHMED ALI RAZA*******//
//****PIN CONFIGURATION****//
//   COMPONENT  ARDUINO_PIN
//   RST/Reset   RST    D9
//   SPI SS      SDA    D10
//   SPI MOSI    MOSI   D11
//   SPI MISO    MISO   D12
//   SPI SCK     SCK    D13
//   Buzzer             A0


#include <SPI.h>
#include <MFRC522.h>

#define RST_PIN         9         
#define SS_PIN          10        
MFRC522 mfrc522(SS_PIN, RST_PIN); 
#define buz A0
 
void setup() {
   Serial.println("Automatic Smart Cart");
   Serial.print("****Iqra University****");

  Serial.begin(9600); 
  
  pinMode(buz, OUTPUT);
  digitalWrite(buz, HIGH);
  delay(500);
  while (!Serial);    
  SPI.begin();      
  mfrc522.PCD_Init();  
  delay(4);       
  mfrc522.PCD_DumpVersionToSerial();
  digitalWrite(buz, LOW);
}


void loop()
{

  if ( ! mfrc522.PICC_IsNewCardPresent()) 
  {
    return;
  }
  if ( ! mfrc522.PICC_ReadCardSerial()) 
  {
    return;
  }
  Serial.print("UID tag :");
  String content= "";
  byte letter;
  for (byte i = 0; i < mfrc522.uid.size; i++) 
  {
     Serial.print(mfrc522.uid.uidByte[i] < 0x10 ? " 0" : " ");
     Serial.print(mfrc522.uid.uidByte[i], HEX);
     content.concat(String(mfrc522.uid.uidByte[i] < 0x10 ? " 0" : " "));
     content.concat(String(mfrc522.uid.uidByte[i], HEX));
  }
  Serial.println();
  Serial.print("message : ");
  content.toUpperCase();

   delay(100);
if (content.substring(1) == "87 0E FB 16") 
  {
   Serial.println("Authorized access card");
   digitalWrite(buz, HIGH);
   delay(100);
   digitalWrite(buz, LOW);
   delay(100);
   digitalWrite(buz, HIGH);
   delay(100);
   digitalWrite(buz, LOW);
  }
if (content.substring(1) == "87 8D FB 16") 
  {
    Serial.println("Authorized access card");
   digitalWrite(buz, HIGH);
   delay(100);
   digitalWrite(buz, LOW);
   delay(100);
   digitalWrite(buz, HIGH);
   delay(100);
   digitalWrite(buz, LOW);
  }

if (content.substring(1) == "57 60 4B 18") 
  {
    Serial.println("Authorized access card");
   digitalWrite(buz, HIGH);
   delay(100);
   digitalWrite(buz, LOW);
   delay(100);
   digitalWrite(buz, HIGH);
   delay(100);
   digitalWrite(buz, LOW);
  }



 
if (content.substring(1) != "57 60 4B 18" && content.substring(1) != "87 8D FB 16" && content.substring(1) != "87 0E FB 16") 
{
  Serial.println("Unautorized User");
  digitalWrite(buz, HIGH);
   delay(1000);
   digitalWrite(buz, LOW);
   delay(100);
   digitalWrite(buz, HIGH);
   delay(1000);
   digitalWrite(buz, LOW);
   delay(100);
   digitalWrite(buz, HIGH);
   delay(1000);
   digitalWrite(buz, LOW);
   delay(100);
   

}

}
 
