int ejeX,
int ejeY
int ejeZ; // Valores instantaneos de los tres ejes del acelerómetro (Valores enteros).

unsigned int promX
unsigned int promY
unsigned int promZ; // Es el promedio de las lecturas de los ejes.

int muestras; // Cantidad de muestras.
void setup(){
  analogReference(EXTERNAL); // 3v3 de referencia para conversor A/D tomados desde el sensor o desde Arduino.
  Serial.begin(9600);
  promX=0;
  promY=0;
  promZ=0;
  muestras=50;
}

void loop(){
  // Lecturas directas de los ejes
  for (int i=0;i<muestras;i++){
  ejeX= analogRead(A0);
  promX+=ejeX;
  ejeY= analogRead(A1);
  promY+=ejeY;
  ejeZ= analogRead(A2);
  promZ+=ejeZ; 
  }
  promX/=muestras;
  promY/=muestras;
  promZ/=muestras;
  Serial.print("EjeX: ");
  Serial.print(promX);
  Serial.print(" ");
  Serial.print("EjeY: ");
  Serial.print(promY);
  Serial.print(" ");
  Serial.print("EjeZ: ");
  Serial.println(promZ);
 //delay();
 
  promX=0;
  promY=0;
  promZ=0; // Borra los promedios anteriores (Limpiandolo).
}
