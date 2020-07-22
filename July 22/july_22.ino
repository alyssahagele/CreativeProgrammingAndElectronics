int redLight = 3;
int greenLight = 13;
void setup() {
  pinMode (redLight, OUTPUT);
  pinMode (greenLight, OUTPUT);

}

void loop() {
  analogWrite (redLight, 0);
  digitalWrite (greenLight, HIGH);
  delay (1000);
  analogWrite (redLight, 250);
  digitalWrite (greenLight, LOW);
  delay(1000);
  

}
