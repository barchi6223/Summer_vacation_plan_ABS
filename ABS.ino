//int pin=4;
void setup() {
  
  // put your setup code here, to run once:
  Serial.begin(9600);
  //pinMode(pin, INPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  int a = analogRead(A3);
  Serial.println(a);
  delay(200);

  /*int status;
  status = digitalRead(pin);
  Serial.println(status);
  delay(1000);
*/
} 
