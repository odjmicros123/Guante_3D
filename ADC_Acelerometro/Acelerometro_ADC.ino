void setup() {
   Serial.begin(9600);
   pinMode(9,OUTPUT);
   pinMode(10,OUTPUT);
   pinMode(11,OUTPUT);
   pinMode(12,OUTPUT);
}

void loop() {
 int value1 = analogRead(A0);
 int value2 = analogRead(A1);
 int value3 = analogRead(A2);
 Serial.print(value1);
 Serial.print(" ");
 Serial.print(value2);
 Serial.print(" ");
 Serial.println(value3);
 //delay(500);
}
