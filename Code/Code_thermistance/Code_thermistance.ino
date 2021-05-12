int analogPin =5;
int val;
double tension;
float temp;


void setup() {
  pinMode(analogPin,INPUT);
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  val = analogRead(analogPin);  // read the input pin
  tension = (val*3.3)/676;
  //1,1211x3 - 7,4439x2 + x - 43,095
  temp = 3.8997*pow(tension,3) - 17.089*pow(tension,2)+ 49.686*tension - 43.095;

//  Serial.print(" Lecture : ");
//  Serial.println(val);
//
//  Serial.print(" Tension : ");
//  Serial.println(tension);

  Serial.print(" Temperature : ");
  Serial.println(temp);
  delay(2000);
}
