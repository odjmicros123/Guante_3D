import processing.serial.*;

Serial myPort; //Clase Serial, myport es un objeto.
float ejeX; 
float ejeY; 
float ejeZ, a;
String inString;
void setup()
{
  size(640,480);
  printArray(Serial.list()[0]);
  myPort = new Serial(this,Serial.list()[0],9600);//Conecta al puerto Serial de ARDUINO
  myPort.clear();
  
  myPort.bufferUntil('\n');
}
void draw()
{
  
} 

 
 void serialEvent(Serial p)
  {
    inString = myPort.readString().trim();
    String[] ejes = split(inString, ' ');
    a = ejes.length;
    
    if (a == 3) {
    ejeX= float(ejes[0]);
    ejeY= float(ejes[1]);
    ejeZ= int(ejes[2]);
    print(ejeX); print('\t');
    print(ejeY); print('\t');
    println(ejeZ);
  }
  }
  
 