int analog_pin = 5;

//controles L298N
int IN_1 = 13;  
int IN_2 = 12;
int EN_A = 10;

void setup() {
  // put your setup code here, to run once:

  pinMode(analog_pin,INPUT);
  
  // Configuration des ports en mode "sortie"
  pinMode(IN_1,OUTPUT);
  pinMode(IN_2,OUTPUT);
  pinMode(EN_A,OUTPUT);


  Serial.begin(9600);
}

void loop() {
  
  analogWrite(EN_A,255);
  digitalWrite(IN_1,HIGH);
  digitalWrite(IN_2,LOW);
  delay(1000);
}


//faire une masse globale
//éviter la sortie 9
