// Pont en H L298N
//Ports de commande du moteur B
int RPin1 = 5;
int RPin2 = 7;
int enablePin = 6;
 
// Vitesse du moteur
int state = 0;

void setup() {
    // Configuration des ports en mode "sortie"
    pinMode(RPin1, OUTPUT);
    pinMode(RPin2, OUTPUT);
    pinMode(enablePin, OUTPUT);
    
    // Initialisation du port série
    Serial.begin(9600);
}
 
void loop() {
    if (Serial.available() > 0)
    {
      // Lecture de l'entier passé au port série
      state = Serial.parseInt();
      //
      // Sens du mouvement
      //
      if (state > 0) // avant
      {
        digitalWrite(RPin1, HIGH); 
        digitalWrite(RPin2, LOW);
        Serial.print("Avant ");
        Serial.println(state);
      }
      else if (state < 0) // arrière
      {
        digitalWrite(RPin1, LOW); 
        digitalWrite(RPin2, HIGH);
        Serial.print("Arriere ");
        Serial.println(state);
      }
      else // Stop (freinage)
      {
        digitalWrite(RPin1, HIGH); 
        digitalWrite(RPin2, HIGH);
        Serial.println("Stop");
      }
      //
      // Vitesse du mouvement
      //
      analogWrite(enablePin, abs(state));
    }
    delay(100);
}
