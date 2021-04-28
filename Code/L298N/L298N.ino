int analog_pin = 5;

//controle L298N
int IN_1 = 13;  
int IN_2 = 12;

int EN_A = 10;

void setup() {
  // put your setup code here, to run once:
  pinMode(analog_pin,INPUT);
  pinMode(IN_1,OUTPUT);
  pinMode(IN_2,OUTPUT);
  
  pinMode(EN_A,OUTPUT);


  Serial.begin(9600);

  
}

void loop() {
  
  analogWrite(EN_A,100);
  digitalWrite(IN_1,HIGH);
  digitalWrite(IN_2,LOW);
  delay(2000);
}
