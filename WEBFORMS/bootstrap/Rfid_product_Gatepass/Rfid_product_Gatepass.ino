#include <SPI.h>
#include <MFRC522.h>

#define RST_PIN         9          // Configurable, see typical pin layout above
#define SS_PIN          10         // Configurable, see typical pin layout above

MFRC522 mfrc522(SS_PIN, RST_PIN);  // Create MFRC522 instance

#define buz A0

void setup() {
  Serial.begin(9600);   // Initialize serial communications with the PC
  pinMode(buz, OUTPUT);
  digitalWrite(buz, HIGH);
  delay(500);
   
  while (!Serial);    // Do nothing if no serial port is opened (added for Arduinos based on ATMEGA32U4)
  SPI.begin();      // Init SPI bus
  mfrc522.PCD_Init();   // Init MFRC522
  delay(4);       // Optional delay. Some board do need more time after init to be ready, see Readme
  mfrc522.PCD_DumpVersionToSerial();  // Show details of PCD - MFRC522 Card Reader details
  digitalWrite(buz, LOW);
}


void loop()
{

  if ( ! mfrc522.PICC_IsNewCardPresent()) 
  {
    return;
  }
  // Select one of the cards
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
  Serial.print("Message : ");
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
