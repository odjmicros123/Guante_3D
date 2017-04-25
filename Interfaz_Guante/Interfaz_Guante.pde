PImage img1,img2,img3,img4;
//PImage bg;
int r=0,g=0,b=0,a;
import processing.serial.*;

Serial myPort; //Clase Serial, myport es un objeto.
float ejeX, ejeY, ejeZ,x,y;
String inString;

void setup()
{
  
size(1300,690);
background(255);

  
img1 = loadImage("Titulo_Interfaz.png");
img2 = loadImage("Borrador.png");
img3 = loadImage("Borrador_Titulo.png");
img4 = loadImage("Colores_Titulo.png");
//bg = loadImage("Textura.png");

printArray(Serial.list()[0]);
myPort = new Serial(this,Serial.list()[0],9600);//Conecta al puerto Serial de ARDUINO
myPort.clear();
myPort.bufferUntil('\n');

x = width/2;

y=height/2;

ejeX=width/2;

ejeY=height/2;

}

void draw()
{
  /*
  background(bg);
  {
  fill(255);
  rect(150,100,1140,580,25);//Campo de Dibujo
  }*/
  fill(100);
  image(img1, 500,5);//Titulo de la interfaz
  stroke(0,0,0,0);
  rect(10,140,130,470,20);//Panel de Colores
  fill(255,0,0);
  rect(15,145,50,50,15);
  textSize(18);
  fill(255);
  text("R",35,208);
  
  fill(150,0,0);
  rect(85,145,50,50,15);
  fill(255);
  text("1",105,208);//Escala de Rojos - Rojo Oscuro
 
  fill(0,0,255);
  rect(15,210,50,50,15);
  fill(255);
  text("A",35,273);
  
  fill(0,105,255);
  rect(85,210,50,50,15);
  fill(255);
  text("2",105,273);////Escala de Azules -Claro
  
  
  fill(255,255,0);
  rect(15,275,50,50,15);
  fill(255);
  text("Y",35,338);
  
  fill(255,168,0);
  rect(85,275,50,50,15);
  fill(255);
  text("3",105,338);//Escala de Amarillos
  
  fill(0,255,0);
  rect(15,340,50,50,15);
  fill(255);
  text("V",35,403);
  
  fill(0,158,0);
  rect(85,340,50,50,15);
  fill(255);
  text("4",105,403);//Escala de verdes - Claro
  
  fill(255,60,0);
  rect(15,405,50,50,15);
  fill(255);
  text("N",35,468);
  fill(140,64,0);
  rect(85,405,50,50,15);
  fill(255);
  text("C",105,468);//Naranja y Café
  fill(255,0,255);
  rect(15,470,50,50,15);
  fill(255);
  text("E",35,533);
  fill(140,0,255);
  rect(85,470,50,50,15);
  fill(255);
  text("M",105,533);//Rosado y Violeta
  fill(150);
  rect(15,535,50,50,15);
  fill(255);
  text("G",35,598);
  fill(0);
  rect(85,535,50,50,15);
  fill(255);
  text("O",105,598);//Gris y Negro
  fill(255);
  rect(10,615,50,50,20);//Recuadro
  image(img2,10,615);//Imagen Borrador
  image(img3,57,630);//Texto Borrador
  image(img4,25,120);//Texto Colores
  fill(0);
  text("Clic Derecho",55,670);
  if ((ejeX < 1270) && (ejeX > 150) 
   && (ejeY < 670)  && (ejeY > 100)){
   //if (mousePressed && (mouseButton == LEFT)){
  stroke(r,g,b);
  strokeWeight(5);
  line(x,y,ejeX,ejeY);
   
  if (mousePressed && (mouseButton == RIGHT)){
      fill(255);
      stroke(255);
      rect(mouseX,mouseY,40,40);
  }
   }
 }

public void keyPressed(){
    if(key=='r'){ r=255;g=0;b=0;}
    if(key=='1'){ r=150;g=0;b=0;}
    if(key=='a'){ r=0;g=0;b=255;}
    if(key=='2'){ r=0;g=150;b=255;}
    if(key=='y'){ r=255;g=255;b=0;}
    if(key=='3'){ r=255;g=168;b=0;}
    if(key=='v'){ r=0;g=255;b=0;}
    if(key=='4'){ r=0;g=158;b=0;}
    if(key=='n'){ r=255;g=60;b=0;}
    if(key=='c'){ r=140;g=64;b=0;}
    if(key=='e'){ r=255;g=0;b=255;}
    if(key=='m'){ r=140;g=0;b=255;}
    if(key=='g'){ r=150;g=150;b=150;}
    if(key=='o'){ r=0;g=0;b=0;}
    if(key=='b'){r=255;g=255;b=255;}
 }
 
  void serialEvent(Serial p)
  {
    inString = myPort.readString().trim();
    String[] ejes = split(inString, ' ');
    a = ejes.length;
    
    if (a == 3) {
     x=ejeX;
     y=ejeY;
    ejeX= float(ejes[0]);
    ejeY= float(ejes[1]);
    ejeZ= float(ejes[2]);
    print(ejeX); print('\t');
    print(ejeY); print('\t');
    println(ejeZ);
   
  }
  }