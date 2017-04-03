float inc=3,incr=10;
float x_ball,y_ball;
float ballsize=30;
float incx, incy;
float xrect;
void setup()
{
  size(800,600);
  x_ball=y_ball=0;
  incx=incy=inc;
  xrect=365;
}

void draw()
{
  background(128); //Funcion background sirve para colorear el fondo de la ventana
  fill(100,0,0); //Función Fill funciona para colorear la figura, se debe colocar esta función antes de la figura
  ellipse(x_ball,y_ball,ballsize,ballsize); //Ellipse crea una figura eliptica que tiene de parametros la posicion x, la posicion y, tamaño del ancho y el tamaño del alto.
  fill(100,0,0);
  rect(xrect,590,100,10);
  if(x_ball<ballsize/2) incx=inc;
  if(x_ball>799-ballsize/2) incx=-inc;
  if(y_ball<ballsize/2) incy=inc;
  if(y_ball>599-ballsize/2) incy=-inc;
  x_ball+=incx;
  y_ball+=incy;
}
public void keyPressed()
{
  if(key=='+')
  inc++;
  if(key=='-')
  inc--;
  
  if(inc>20) inc=20;
  if(inc<0) inc=0;
  incx=incx<0 ? -inc : inc;
  incy=incy<0 ? -inc : inc;
  
  if(key==CODED)
  { 
    if(keyCode==LEFT)
  if(xrect>0)
  xrect-=incr;
    if(keyCode==RIGHT)
  if(xrect<799-100)
  xrect+=incr;
  }
}