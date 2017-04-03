PImage img1,img2;
void setup()
{
size(1300,690);
img1 = loadImage("Titulo_Interfaz.png");
img2 = loadImage("Borrador.png");
}

void draw()
{
  background(180);
  fill(255);
  rect(150,100,1140,580);//Campo de Dibujo
  fill(100);
  image(img1, 400,5);//Titulo de la interfaz
  rect(10,140,130,450);//Panel de Colores
  fill(255,0,0);
  rect(15,145,50,50);
  fill(150,0,0);
  rect(85,145,50,50);//Escala de Rojos
  fill(0,0,255);
  rect(15,210,50,50);
  fill(0,105,255);
  rect(85,210,50,50);//Escala de Azules
  fill(255,255,0);
  rect(15,275,50,50);
  fill(255,168,0);
  rect(85,275,50,50);//Escala de Amarillos
  fill(0,255,0);
  rect(15,340,50,50);
  fill(0,158,0);
  rect(85,340,50,50);//Escala de verdes
  fill(255,60,0);
  rect(15,405,50,50);
  fill(140,64,0);
  rect(85,405,50,50);//Naranja y Café
  fill(255,0,255);
  rect(15,470,50,50);
  fill(140,0,255);
  rect(85,470,50,50);//Rosado y Violeta
  fill(150);
  rect(15,535,50,50);
  fill(0);
  rect(85,535,50,50);//Gris y Negro
  fill(255);
  rect(15,615,50,50);//Recuadro
  image(img2,15,615);//Imagen Borrador
  fill(0);
  textSize(16);
  text("Borrador",70, 630);//Texto Borrador
  fill(0);
  textSize(20);
  text("Colores",50,130);//Texto Panel de Colores
 }