import processing.serial.*;

Serial myPort; //Clase Serial, myport es un objeto.
int ejeX; 
int ejeY; 
int ejeZ;
//int list[0], list[1], list[2];
void setup()
{
  size(640,480);
  //println(Serial.list());
  myPort = new Serial(this,Serial.list()[0],9600);//Conecta al puerto Serial de ARDUINO
  myPort.clear();
  
  myPort.bufferUntil('\n');
}
void draw()
{
  
} //if(myPort.available()>0) //Si hay datos disponibles en el puerto, retorna la mayor cantidad de datos posibles.

 /* byte[] buffer = new byte[6]; 
  myPort.readBytesUntil('\n',buffer);
  background(0);*/
 void serialEvent(Serial p)
  {
    String inString = p.readString().trim();
    if (inString != null){
    String[] list = split(inString, ':');
    ejeX= int(list[0]);
    ejeY= int(list[1]);
    ejeZ= int(list[2]);
    print(ejeX); print('\t');
    print(ejeY); print('\t');
    println(ejeZ);
  }
  }
 