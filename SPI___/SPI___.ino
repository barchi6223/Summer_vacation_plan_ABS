#define CS 10
#define SDO 11
#define SDI 12
#define SCK 13
void setup() {
  Serial.begin(9600);
  pinMode(SDI,INPUT);
  pinMode(SDO,OUTPUT);
  pinMode(CS,OUTPUT);
  pinMode(SCK,OUTPUT);
  
  digitalWrite(CS,HIGH);
}
void loop() {
  digitalWrite(CS,LOW);
  if(digitalRead(SDI)>0){
  Serial.println(SDI);
  }
  digitalWrite(CS,HIGH);
}
