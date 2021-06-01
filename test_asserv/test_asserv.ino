//Pin thermistance
int pin_therm = 5;

//Variable thermistance
int val;
double tension;
float temp;

//Pins L298N
int IN_1 = 13;  
int IN_2 = 12;
int EN_A = 10;

//Variables asservissement

float diff=0,diffa=0,diffd=0,diffPrec=0;
int consigne = 50;
int dt = 1;

float Kp=0.6106,Ki=184.1,Kd=0;

int commande_EnA;
void setup() {
  // put your setup code here, to run once:

//  Configuration du port de la thermistance en "entrée"
  pinMode(pin_therm,INPUT);
  
//  Configuration des ports de la résistance chauffante en "sortie"
  pinMode(IN_1,OUTPUT);
  pinMode(IN_2,OUTPUT);
  pinMode(EN_A,OUTPUT);

  Serial.begin(9600);

//  //préparation export excel
//  Serial.println("CLEARDATA"); 
//  Serial.println("LABEL,temp");
//  Serial.println("RESETTIMER");
}

void loop() {
  // put your main code here, to run repeatedly:
  diff=0,diffa=0,diffd=0,diffPrec=0;
//Mise en marche de la résistance chauffante
  digitalWrite(IN_1,HIGH);
  digitalWrite(IN_2,LOW);
  
//Calcul de la température avec la thermistance
  val = analogRead(pin_therm);  // read the input pin
  tension = (val*3.3)/676;

//3,8997x3 - 17,089x2 + 49,686x - 43,095
  temp = 3.8997*pow(tension,3) - 17.089*pow(tension,2)+ 49.686*tension - 43.095;
  
  //Serial.println(temp);
  //temp = 25;
  diffPrec = diff;
  diff  = consigne-temp;
  diffa = diffa+diff;   //intégration
  diffd = diffd - diff; //dérivée
  //diffd = diff - diffPrec; //dérivée
  
  commande_EnA = Kp*diff+Ki*diffa*dt+Kd*diffd*dt;

  if(commande_EnA<0){
    commande_EnA = 0;
  }
  commande_EnA = map(commande_EnA, 0, 4500, 0, 255);

  if(commande_EnA>255){
    commande_EnA = 255;
  }

  analogWrite(EN_A,commande_EnA);
  Serial.print("temp : ");
  Serial.print(temp);
  Serial.print("\t commande : ");
  Serial.print(commande_EnA);
  Serial.print("\t diff : ");
  Serial.print(diff);
  Serial.print("\t diffD : ");
  Serial.print(diffd);
  Serial.print("\t diffA: ");
  Serial.println(diffa);
  
  
  delay(500);
}
