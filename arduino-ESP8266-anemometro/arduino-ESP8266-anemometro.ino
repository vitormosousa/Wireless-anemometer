#include <Ticker.h>

/*
 * ESP8266 SPIFFS HTML Web Page with JPEG, PNG Image
 * https://circuits4you.com
 */

#include <ESP8266WiFi.h>
#include <ESP8266WebServer.h>
#include <FS.h>   //Include File System Headers
#include <EEPROM.h>

const char* htmlfile = "/index.html";

//WiFi Connection configuration
const char *ssid = "TP-LINK_GUGA";
const char *password = "anitatuca";

#define  PIN_ADC A0
#define  PIN_TOGGLE D0
#define PIN_INTERRUPT D5
#define PIN_TESTE D6

ESP8266WebServer server(80);

Ticker blinker;

volatile int32_t speed=0;
volatile bool stateTestePin;

void handleSpeed (void){
  server.send(200, "text/plane",String(speed));
}

void getSpeed(){
  static uint32_t  lastTime;
  speed= (millis()-lastTime);
  speed = 10000/speed;
  lastTime=millis();
}

void changeState()
{
  digitalWrite(PIN_TESTE, !(digitalRead(PIN_TESTE)));  //Invert Current State of LED
}

void handleADC(){
  digitalWrite( PIN_TOGGLE, HIGH);
  int a = analogRead(A0);
  delay(5);
  a = map(a,0,1023,0,100);

  digitalWrite( PIN_TOGGLE, LOW);
  int b = analogRead(A0);
  delay(5);
  b = map(a,0,1023,0,100);

  String adc = String(180*atan2(a,b)/(2*M_PI))+"&"+String(speed);
  Serial.println(adc);
  //server.send(200, "text/plane",adc);
  Serial.println (adc);
  server.send(200, "text/plane",adc);
}

void handleRoot(){
  server.sendHeader("Location", "/index.html",true);   //Redirect to our html web page
  server.send(302, "text/plane","");
}

void handleConfig(){
  server.sendHeader("Location", "/config.html",true);   //Redirect to our html web page
  server.send(302, "text/plane","");
}

bool loadFromSpiffs(String path){
  String dataType = "text/plain";
  if(path.endsWith("/")) path += "index.htm";

  if(path.endsWith(".src")) path = path.substring(0, path.lastIndexOf("."));
  else if(path.endsWith(".html")) dataType = "text/html";
  else if(path.endsWith(".htm")) dataType = "text/html";
  else if(path.endsWith(".css")) dataType = "text/css";
  else if(path.endsWith(".js")) dataType = "application/javascript";
  else if(path.endsWith(".png")) dataType = "image/png";
  else if(path.endsWith(".gif")) dataType = "image/gif";
  else if(path.endsWith(".jpg")) dataType = "image/jpeg";
  else if(path.endsWith(".ico")) dataType = "image/x-icon";
  else if(path.endsWith(".xml")) dataType = "text/xml";
  else if(path.endsWith(".pdf")) dataType = "application/pdf";
  else if(path.endsWith(".zip")) dataType = "application/zip";
  File dataFile = SPIFFS.open(path.c_str(), "r");
  if (server.hasArg("download")) dataType = "application/octet-stream";
  if (server.streamFile(dataFile, dataType) != dataFile.size()) {
  }

  dataFile.close();
  return true;
}

void handleWebRequests(){
  if(loadFromSpiffs(server.uri())) return;
  String message = "File Not Detected\n\n";
  message += "URI: ";
  message += server.uri();
  message += "\nMethod: ";
  message += (server.method() == HTTP_GET)?"GET":"POST";
  message += "\nArguments: ";
  message += server.args();
  message += "\n";
  for (uint8_t i=0; i<server.args(); i++){
    message += " NAME:"+server.argName(i) + "\n VALUE:" + server.arg(i) + "\n";
  }
  server.send(404, "text/plain", message);
  Serial.println(message);
}

// ----------------------------------------
#define ADDRESS_MIN 0
#define ADDRESS_NUM 2
#define ADDRESS_DEN 4
#define ADDRESS_DESVIO 6

uint16_t minADC;
uint16_t numeradorK;
uint16_t denominadorK;

void readConfig(){
	minADC= EEPROM.read(ADDRESS_MIN);
	minADC= minADC << 8 || EEPROM.read(ADDRESS_MIN+1);

	numeradorK= EEPROM.read(ADDRESS_NUM);
	numeradorK= numeradorK << 8 || EEPROM.read(ADDRESS_NUM+1);

	denominadorK= EEPROM.read(ADDRESS_DEN);
	denominadorK= denominadorK << 8 || EEPROM.read(ADDRESS_DEN+1);
}

void writeConfig(){
	EEPROM.write(ADDRESS_MIN, (uint8_t)(minADC>>8));
	EEPROM.write(ADDRESS_MIN+1, (uint8_t)minADC);

	if( numeradorK){
		EEPROM.write(ADDRESS_NUM, (uint8_t)(numeradorK>>8));
		EEPROM.write(ADDRESS_MIN+1, (uint8_t)numeradorK);
	}

	if( denominadorK){
		EEPROM.write(ADDRESS_DEN, (uint8_t)(denominadorK>>8));
		EEPROM.write(ADDRESS_DEN+1, (uint8_t)denominadorK);
	}
	EEPROM.commit();
}
// ----------------------------------------


void setup() {
  delay(1000);
  Serial.begin(115200);
  Serial.println();

  //Initialize File System
  SPIFFS.begin();
  Serial.println("File System Initialized");


  //Connect to wifi Network
  WiFi.begin(ssid, password);     //Connect to your WiFi router
  Serial.println("");

  // Wait for connection
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }

  //If connection successful show IP address in serial monitor
  Serial.println("");
  Serial.print("Connected to ");
  Serial.println(ssid);
  Serial.print("IP address: ");
  Serial.println(WiFi.localIP());  //IP address assigned to your ESP

  //Initialize Webserver
  server.on("/",handleRoot);
  server.on("/config",handleConfig);
  server.on("/getADC",handleADC); //Reads ADC function is called from out index.html
  server.on("/postConfig",handleConfig);
  server.onNotFound(handleWebRequests); //Set setver all paths are not found so we can handle as per URI
  server.begin();

  EEPROM.begin(7);
  readConfig();
  if (numeradorK==0)
	numeradorK=1;
	if	(denominadorK==0)
	denominadorK=1;

  pinMode (PIN_TOGGLE, OUTPUT);
  attachInterrupt(PIN_INTERRUPT, getSpeed, RISING);

  pinMode(PIN_TESTE, OUTPUT);
  blinker.attach(0.4, changeState);
}

void loop() {
 server.handleClient();
}
