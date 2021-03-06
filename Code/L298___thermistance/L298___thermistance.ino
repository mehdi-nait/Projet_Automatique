//Pin thermistance
int pin_therm = 5;

//Variable thermistance
int val;
double tension;
float temp;

int Consigne = 50;

//Pins L298N
int IN_1 = 13;  
int IN_2 = 12;
int EN_A = 10;

int debug = 0;

void setup() {
  // put your setup code here, to run once:

//  Configuration du port de la thermistance en "entrée"
  pinMode(pin_therm,INPUT);
  
//  Configuration des ports de la résistance chauffante en "sortie"
  pinMode(IN_1,OUTPUT);
  pinMode(IN_2,OUTPUT);
  pinMode(EN_A,OUTPUT);

  Serial.begin(9600);

  //préparation export excel
  Serial.println("CLEARDATA"); 
  Serial.println("LABEL,temp");
  Serial.println("RESETTIMER");
}

void loop() {
  // put your main code here, to run repeatedly:

//Mise en marche de la résistance chauffante
  digitalWrite(IN_1,HIGH);
  digitalWrite(IN_2,LOW);
  analogWrite(EN_A,255);
//Calcul de la température avec la thermistance
  val = analogRead(pin_therm);  // read the input pin
  tension = (val*3.3)/676;

//3,8997x3 - 17,089x2 + 49,686x - 43,095
  temp = 3.8997*pow(tension,3) - 17.089*pow(tension,2)+ 49.686*tension - 43.095;
  /*
  if(temp<Consigne){
    analogWrite(EN_A,255);
    debug = 255;
  }
  else{
    analogWrite(EN_A,0);
    debug = 0;
  }
  */
  Serial.println(temp);

  
  delay(1000);
}
