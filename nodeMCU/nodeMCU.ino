#include <ESP8266WiFi.h>
#include <ESP8266HTTPClient.h>
#include <ArduinoJson.h>
#include <SPI.h>
#include <MFRC522.h>
#include <LiquidCrystal_I2C.h>
#include <Wire.h>


#define RST_PIN         9         
#define SS_PIN          D4       
#define MODE_BUTTON D3
#define TOTAL_BUTTON D8


const char* ssid     = "BILAL";  
const char* password = "12345678";
String host ="http://192.168.43.12/";

LiquidCrystal_I2C lcd(0x3F, 20, 4);
MFRC522 mfrc522(SS_PIN, RST_PIN);  

boolean mode_button_state = LOW;
boolean total_button_state = LOW;

void setup() {
	Serial.begin(9600);		
	while (!Serial);		
	SPI.begin();			
	mfrc522.PCD_Init()


pinMode(MODE_BUTTON,INPUT_PULLUP);
pinMode(TOTAL_BUTTON,INPUT);
digitalWrite(TOTAL_BUTTON,LOW);
Wire.begin(D2, D1);   
lcd.init();      
                      

lcd.backlight();

lcd.clear();
lcd.setCursor(0, 0);  
lcd.print("RFID BASED SHOPPING");
lcd.setCursor(3, 1);
lcd.print("TROLLY WITH PHP");
lcd.setCursor(10, 2);
lcd.print("DATA-BASE");
lcd.setCursor(5, 3);
lcd.print("");
delay(2000);

 WiFi.mode(WIFI_STA);
  WiFi.begin(ssid, password);
  Serial.println("");
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  Serial.println("");
  Serial.print("Connected to ");
  Serial.println(ssid);
  Serial.print("IP address: ");
  Serial.println(WiFi.localIP());
  lcd.clear();
  lcd.setCursor(0, 0);  
  lcd.print("Cart is ready");
}

void loop() {
HTTPClient http;

if(digitalRead(MODE_BUTTON)==LOW){
  if(mode_button_state==HIGH){
    mode_button_state=LOW;
    delay(300);
  }
  else{
    mode_button_state = HIGH;
    delay(300);
  }  
}

if(digitalRead(TOTAL_BUTTON)==HIGH){
  /*if(total_button_state==HIGH){
    total_button_state=LOW;
    delay(300);
  }
  else{*/
    total_button_state = HIGH;
    String url1 =host+"RFID/updateCart.php?total=1"; 
    http.begin(url1);
    int statusCode1 = http.GET();

    String url2 =host+"RFID/updateCart.php?getTotal"; 
    http.begin(url2);
    int statusCode2 = http.GET();
    
    StaticJsonDocument<1082> doc1;
    DeserializationError error = deserializeJson(doc1, http.getString());
    if (error) {
    Serial.print(F("deserializeJson() failed: "));
    Serial.println(error.c_str());
    return;
   }

   if(statusCode2==200){
    const float total = doc1["total"];
    lcd.clear();
    lcd.setCursor(0, 0);
    lcd.print("Total Bill:");
    lcd.setCursor(11, 0);
    lcd.print(total);
   }
   
    delay(300);
  //} 
}
//Serial.println(total_button_state);

  if ( ! mfrc522.PICC_IsNewCardPresent()) 
  {
    return;
  }
  // Select one of the cards
  if ( ! mfrc522.PICC_ReadCardSerial()) 
  {
    return;
  }

    lcd.clear();
  //Show UID on serial monitor
  Serial.print("UID tag :");
  
String strID = "";
  for (byte i = 0; i < 4; i++) {
    strID +=
    (mfrc522.uid.uidByte[i] < 0x10 ? "0" : "") +
    String(mfrc522.uid.uidByte[i], HEX);
  }
  strID.toUpperCase();

  Serial.println(strID);

  Serial.println(mode_button_state);
  //Serial.println(total_button_state);

  //HTTPClient http;
  String url =host+"RFID/updateCart.php?rfid="+strID;
  if(mode_button_state==LOW){
    url+="&action=1";
  }else{
     url+="&action=2";  
  }
  
  Serial.println(url);
  http.begin(url);
  int statusCode = http.GET();
  Serial.println("Status code: "+statusCode);

  StaticJsonDocument<1082> doc;
  DeserializationError error = deserializeJson(doc, http.getString());
  http.end(); 

  if (error) {
    Serial.print(F("deserializeJson() failed: "));
    Serial.println(error.c_str());
    return;
  }
//code for lcd menu
  lcd.setCursor(0, 0);  
  lcd.print("NOP:");
  lcd.setCursor(14, 1);  
  lcd.print("Mode:");
  lcd.setCursor(19, 1);  

  if(mode_button_state==LOW){
    lcd.print("+");
  }else{
    lcd.print("-");  
  }
  
  lcd.setCursor(0, 1);
  lcd.print("POP:");
  lcd.setCursor(0, 2);
  lcd.print("Total Bill:");
  lcd.setCursor(0, 3);
  lcd.print("Total Products:");

  if(statusCode==200){
    const char* name = doc["name"];
    const char* price = doc["price"];
    const int total_products = doc["total_products"];
    const float total_amount = doc["total_amount"];
    Serial.println(name);
    lcd.setCursor(4,0);
    lcd.print(name);  
    
    Serial.println(price);
    lcd.setCursor(4,1);
    lcd.print(price);
    
    Serial.println(total_amount);
    lcd.setCursor(11,2);
    lcd.print(total_amount);
    
    Serial.println(total_products);
    lcd.setCursor(15,3);
    lcd.print(total_products);
  }

  
  mfrc522.PICC_HaltA();
  mfrc522.PCD_StopCrypto1();
  
  delay(1000);
}