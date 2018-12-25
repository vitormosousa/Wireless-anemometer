//#include <Ticker.h>

/*
 * ESP8266 SPIFFS HTML Web Page with JPEG, PNG Image
 * https://circuits4you.com
 */

#include <ESP8266WiFi.h>
#include <WiFiClient.h>
#include <ESP8266WebServer.h>
#include <FS.h>   //Include File System Headers
#include <EEPROM.h>

const char* htmlfile = "/index.html";
// --------------- WiFi Connection configuration ---------
const char *ssid = "TP-LINK_GUGA";
const char *password = "anitatuca";
// ---------------------------
// const char *ssid = "Maresia";
// const char *password = "";
// -----------------------------
#define  PIN_ADC A0     //
#define  PIN_TOGGLE 16  //
#define PIN_INTERRUPT 12  // GPIO14
//#define PIN_TESTE D6 // GPIO12

#define ADDRESS_DESVIO 0
#define ADDRESS_NUM 2
#define ADDRESS_DEN 4
#define ADDRESS_MIN_COS 6
#define ADDRESS_MIN_SIN 8
#define ADDRESS_MAX_COS 10
#define ADDRESS_MAX_SIN 12
// valores guardados em EEPROM
int16_t desvio;
uint16_t numeradorK;
uint16_t denominadorK;
uint16_t minADC_x;
uint16_t minADC_y;
uint16_t maxADC_x;
uint16_t maxADC_y;

// valores lidos
uint16_t xADC;
uint16_t yADC;

uint32_t speed;

// valores limites lidos
uint16_t read_minADC_x;
uint16_t read_minADC_y;

uint16_t read_maxADC_x;
uint16_t read_maxADC_y;



ESP8266WebServer server(80);


//volatile int32_t speed=0;
//volatile bool stateTestePin;

// ----------------------------------------
void readADC(){
  digitalWrite( PIN_TOGGLE, LOW);
  delay(5);
  xADC = analogRead(A0);
  if (xADC<read_minADC_x)
    read_minADC_x=xADC;
  if (xADC>read_maxADC_x)
    read_maxADC_x=xADC;
  //a = map(a,0,1023,0,100);
//  Serial.print("cos : ");
//  Serial.println (xADC);

  digitalWrite( PIN_TOGGLE, HIGH);
  delay(5);
  yADC = analogRead(A0);
  if (yADC<read_minADC_y)
    read_minADC_y=yADC;
  if (yADC>read_maxADC_y)
    read_maxADC_y=yADC;
  //b = map(a,0,1023,0,100);
//  Serial.print("sin : ");
//  Serial.println (yADC);
}

void readConfig(){

  for (uint8_t k=0; k<8; k++)
    Serial.println(EEPROM.read(k));

  desvio=EEPROM.read(ADDRESS_DESVIO);
  delay(500);
  Serial.println(desvio);
  desvio = (desvio <<8) | EEPROM.read(ADDRESS_DESVIO+1);
  delay(500);
  Serial.println(desvio);
	numeradorK= EEPROM.read(ADDRESS_NUM);
  delay(500);
	numeradorK= (numeradorK << 8) | EEPROM.read(ADDRESS_NUM+1);
  delay(500);
  Serial.println(numeradorK);
	denominadorK= EEPROM.read(ADDRESS_DEN);
  delay(500);
  denominadorK= (denominadorK << 8) | EEPROM.read(ADDRESS_DEN+1);
  delay(500);
  Serial.println(denominadorK);
  minADC_x= EEPROM.read(ADDRESS_MIN_COS);
  delay(500);
	minADC_x= (minADC_x << 8) + EEPROM.read(ADDRESS_MIN_COS+1);
  delay(500);
  minADC_y= EEPROM.read(ADDRESS_MIN_SIN);
  delay(500);
	minADC_y= (minADC_y << 8) + EEPROM.read(ADDRESS_MIN_SIN+1);
  delay(500);
  maxADC_x= EEPROM.read(ADDRESS_MAX_COS);
  delay(500);
	maxADC_x= (maxADC_x << 8) + EEPROM.read(ADDRESS_MAX_COS+1);
  delay(500);
  maxADC_y= EEPROM.read(ADDRESS_MAX_SIN);
  delay(500);
	maxADC_y= (maxADC_y << 8) + EEPROM.read(ADDRESS_MAX_SIN+1);
  delay(500);


  Serial.println("Resul");
  Serial.println(desvio);
  Serial.println(numeradorK);
  Serial.println(denominadorK);
  Serial.println(minADC_x);
  Serial.println(minADC_y);
  Serial.println(maxADC_x);
  Serial.println(maxADC_y);
}

void writeConfig(int16_t ad, uint16_t n, uint16_t d, uint16_t m_x, uint16_t m_y, uint16_t max_x, uint16_t max_y){
  Serial.println("writeConfig");
  Serial.println(ad);
  Serial.println(n);
  Serial.println(d);
  Serial.println(m_x);
  Serial.println(m_y);
  Serial.println(max_x);
  Serial.println(max_y);

  EEPROM.write(ADDRESS_DESVIO, (uint8_t)(ad>>8));
  delay(100);

	EEPROM.write(ADDRESS_DESVIO+1, (uint8_t)ad);
  delay(100);
	if( n>0){
		EEPROM.write(ADDRESS_NUM, (uint8_t)(n>>8));
    delay(100);
		EEPROM.write(ADDRESS_NUM+1, (uint8_t)n);
    delay(100);
	}

	if( d>0){
		EEPROM.write(ADDRESS_DEN, (uint8_t)(d>>8));
    delay(100);
		EEPROM.write(ADDRESS_DEN+1, (uint8_t)d);
    delay(100);
	}

  EEPROM.write(ADDRESS_MIN_COS, (uint8_t)(m_x>>8));
  delay(100);
	EEPROM.write(ADDRESS_MIN_COS+1, (uint8_t)m_x);
  delay(100);

  EEPROM.write(ADDRESS_MIN_SIN, (uint8_t)(m_y>>8));
  delay(100);
	EEPROM.write(ADDRESS_MIN_SIN+1, (uint8_t)m_y);
  delay(100);

  EEPROM.write(ADDRESS_MAX_COS, (uint8_t)(max_x>>8));
  delay(100);
	EEPROM.write(ADDRESS_MAX_COS+1, (uint8_t)max_x);
  delay(100);

  EEPROM.write(ADDRESS_MAX_SIN, (uint8_t)(max_y>>8));
  delay(100);
	EEPROM.write(ADDRESS_MAX_SIN+1, (uint8_t)max_y);
  delay(100);

	EEPROM.commit();
}

void handleSpeed (void){
  server.send(200, "text/plane",String(speed));
}

void getSpeed(){
  static uint32_t  lastTime;
  speed= (millis()-lastTime);
  speed = 10000/speed;
  lastTime=millis();
}

// void changeState()
// {
//   digitalWrite(PIN_TESTE, !(digitalRead(PIN_TESTE)));  //Invert Current State of LED
// }



// -------------------------------------------------
void handleADC(){
  int16_t angulo=180*atan2((xADC-minADC_x)-(maxADC_x-minADC_x)/2,(yADC-minADC_y)-(maxADC_y-minADC_y)/2)/M_PI-desvio;
  if (angulo>180)
    angulo-=360;
  if (angulo<-180)
    angulo+=360;

  String adc = String(angulo)+"&"+String(speed);
  //String adc = String(180*atan2(20,6)/(2*M_PI))+"&"+String(25);
  Serial.print("atan & speed ");
  Serial.println(adc);
  //server.send(200, "text/plane",adc);
  Serial.println (adc);
  server.send(200, "text/plane",adc);
}

// -----------------------------------------------------
void handlePostConfig(){
  Serial.println (server.arg("angulo"));
  Serial.println (server.arg("numerador"));
  Serial.println (server.arg("denominador"));
  Serial.println (server.arg("minimoADC_x"));
  Serial.println (server.arg("minimoADC_y"));
  Serial.println (server.arg("maximoADC_x"));
  Serial.println (server.arg("maximoADC_y"));

  desvio=server.arg("angulo").toInt();
  numeradorK= server.arg("numerador").toInt();
  denominadorK= server.arg("denominador").toInt();
  minADC_x=server.arg("minimoADC_x").toInt();
  minADC_y=server.arg("minimoADC_y").toInt();
  maxADC_x=server.arg("maximoADC_x").toInt();
  maxADC_y=server.arg("maximoADC_y").toInt();


  writeConfig(desvio, numeradorK, denominadorK, minADC_x, minADC_y, maxADC_x, maxADC_y);
  server.send(200, "text/html", "<h1>Valores  salvos</p>");
  read_minADC_x=minADC_x;
  read_minADC_y=minADC_y;
  read_maxADC_x=maxADC_x;
  read_maxADC_y=maxADC_y;
}

// --------------------------------------------
void handleGetConfig(){
  String dataConfig =String(desvio) +"&"+String(numeradorK)+"&"
                      +String(denominadorK)+"&"
                      + String(minADC_x) +"&" + String(minADC_y)+"&"
                      + String(maxADC_x) +"&" + String(maxADC_y)+"&"
                      + String(read_minADC_x)+"&" +String(read_minADC_y)+"&"
                      + String(read_maxADC_x)+"&" +String(read_maxADC_y);

  Serial.println (dataConfig);
  server.send(200, "text/plane",dataConfig);
}

// --------------------------------------------
void handleRoot(){
  server.sendHeader("Location", "/index.html",true);   //Redirect to our html web page
  server.send(302, "text/plane","");
}

// --------------------------------------------
void handleConfig(){
  server.sendHeader("Location", "/config.html",true);   //Redirect to our html web page
  server.send(302, "text/plane","");
}

// -------------------------------------------
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

// -------------------------------------------------
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

// *******************************************
void setup() {
  delay(1000);
  Serial.begin(115200);
  Serial.println();

  SPIFFS.begin();   //Initialize File System
  Serial.println("File System Initialized");
// --------------------------------------
  WiFi.begin(ssid, password);     //Connect to your WiFi router
  Serial.println("");

  while (WiFi.status() != WL_CONNECTED) {   // Wait for connection
    delay(500);
    Serial.print(".");
  }

  //If connection successful show IP address in serial monitor
  Serial.println("");
  Serial.print("Connected to ");
  Serial.println(ssid);
  Serial.print("IP address: ");
  Serial.println(WiFi.localIP());  //IP address assigned to your ESP
// ---------------------------------
  // Serial.print("Configuring access point...");
	// /* You can remove the password parameter if you want the AP to be open. */
	// WiFi.softAP(ssid, password);
  //
	// IPAddress myIP = WiFi.softAPIP();
	// Serial.print("AP IP address: ");
	// Serial.println(myIP);
// -------------------------------
  //Initialize Webserver
  server.on("/",handleRoot);
  server.on("/config", handleConfig);
  server.on("/getADC",  HTTP_GET, handleADC); //Reads ADC function is called from out index.html
  server.on("/updateConfig", HTTP_POST, handlePostConfig);
  server.on("/getConfig",  HTTP_GET, handleGetConfig); //Reads ADC function is called from out index.html
  server.onNotFound(handleWebRequests); //Set setver all paths are not found so we can handle as per URI
  server.begin();

  EEPROM.begin(14);
  readConfig();
  if (numeradorK==0)
	   numeradorK=1;
	if	(denominadorK==0)
	   denominadorK=1;

  pinMode (PIN_TOGGLE, OUTPUT);
  attachInterrupt(PIN_INTERRUPT, getSpeed, RISING);

  read_minADC_y=1000;
  read_minADC_x=1000;
//  pinMode(PIN_TESTE, OUTPUT);
  //blinker.attach(0.4, changeState);
}

// ********************************************
void loop() {
 server.handleClient();
 readADC();
}
