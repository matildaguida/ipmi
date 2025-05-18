String estado;
int e;
PImage fondo1;
PImage uncharted;
PImage fondo2;
PImage fondo3;
PImage cofreoro;
PImage fondo4;

float posX;
float posY;


float brillo;
boolean empezarAnimacion;

float anchoImagen;
float altoImagen;
float XImagen;
float YImagen;
float variacionX;
float variacionY;

String texto1;
String texto2;
String titulo3;
String texto3;
String texto4;
String titulo4;
String boton;

PFont t1;
float sizet1;
color text1;
float posx;
float posy;

float posx2;
float posy2;
color blanco;

int posx3;
float posy3;
color verde;
float tsize3;
float posX3;
float posY3;
float posxtext3;
float posytext3;
int posXoro;
int posYoro;
float anchoCofre;
float altoCofre;
int dir;


float tsize4;
float posX4;
float posY4;
float brillo2;
float brilloP;
boolean subirBrillo;
color gris;
color negro;
int miFrameCount;
float posxrect;
float posyrect;
float posytext4;
float posxtext4;
float wrect;
float hrect;

void setup(){
  size(640,480);
  
  colorMode( HSB, 360, 100, 100);
  estado= "pantalla-1";
  e =1;
  posX = 0;
  posY = 0;
  fondo1 = loadImage("fondo1.jpg");
  uncharted = loadImage("Uncharted_logo.png");
  fondo2 = loadImage ("fondo2diapo.jpg");
  fondo3 = loadImage("fondo3.jpg");
  fondo4 =loadImage("fondo4.jpeg");

  variacionX = 0;
  variacionY = 0;
  anchoImagen =width/2;
  altoImagen = height/6;
  XImagen = (width/2-anchoImagen/2);
  YImagen = (height/2-altoImagen/2);
  
  texto1 ="Matilda Guida" ;
  t1 = loadFont("FranklinGothic-Heavy-48.vlw");
  sizet1 = 25;
  text1= color(200,80,brillo);
  posx=450;
  posy=450;
  brillo =100;
  
  texto2 = "Uncharted es un juego de accion\ny aventura para la Play,\ncuenta con 4 juegos\ndonde el personaje principal\nes un cazador de tesoros.\nEl protagonista se llama Nathan Drake\n(el del medio a la izquierda,en imagen del fondo),\n y usualmente va a estar acompañado de Sullivan\nEn las busquedas de los tesoros te va llevando \npor diferentes lugares, la ciudad,la selva, etc,\npero es dependiendo del juego.\nTe hace resolver acertijos, puzzles y investigaciones\nLos juegos estan fundamentados con historia";
  posx2=30;
  posy2=600;
  blanco = color(0,0,100);

  titulo3="Uncharted 1";
  posx3 = 0;
  posy3 =20;
  verde = color(120, 50,100);
  tsize3 = 36;
  posX3 = 250;
  posY3 = 100;
  texto3 = "En el Uncharted 1, Nate Drake, junto con Elena(otro  personaje)\nencuentran el ataud de Francis Drake, un pirata, que le habia robado\n a los españoles cantidades de oro\ny en la tumba habia un diario con pistas para descubrir la ubicacion\nde el Dorado y junto con Sullivan y Elena las siguen,\npero en en camino se encuentran con unos mercenarios\nlos cuales estan en la busqueda del tesoro tambien\ny descubren en realidad que la estatua de El Dorado esta maldita,\na quienes la abran";
  posxtext3 = -250;
  posytext3 = 200;
  cofreoro = loadImage("cofreoro.png");
  posXoro = 0;
  posYoro = 380;
  anchoCofre =100;
  altoCofre =100;
  dir =1;
  
  tsize4 = 15;
  posX4 =width/2;
  posY4 = height/2;
  texto4 = "En el final los mercenarios se quieren llevar la estatua,aunque este maldita\ny Nate logra que caiga al oceano,\npero tambien el juego tiene una historia\nque te lleva a descubrir cosas\ntanto en el desarrollo del personaje como la historia.\nDespues del Uncharted 1 esta:\nUncharted 2:El Reino de los ladrones\nUncharted 3: La traicion de Drake\nUncharted 4:El Abismo del Oro";
  brillo2 = 0;
  titulo4 = "Final";
  brilloP = 0;
  subirBrillo = true;
  gris= color(0, 0, 50);
  boton = "Reiniciar";
  negro= color(0,0,0);
  
  posxrect =500;
  posyrect =425;
  posytext4 = 460;
  posxtext4 = 530;
  wrect= 200;
  hrect=100;
  miFrameCount = 0;
}




void draw(){
  miFrameCount++;
  
if (e == 1) {
    image(fondo1, 0 ,0, width, height);
    
    
    fill(0,0,brillo);
    textFont(t1,sizet1);
    text(texto1,posx,posy);

if (brillo > 0) {
    brillo -=1;
  }if (frameCount > 60*3) {
    empezarAnimacion = true;
  }
  if (empezarAnimacion) {
    tint(0);
    image(uncharted,XImagen,YImagen, anchoImagen, altoImagen);
  
    noTint();

  variacionX+=3;
  variacionY++;
  
 
  anchoImagen+=variacionX;
  altoImagen+=variacionY;
  
 
  XImagen-=variacionX/2;
  YImagen-=variacionY/2;
   if (anchoImagen > width || altoImagen > height) {
    empezarAnimacion = false;

   }
 
 }if ( miFrameCount == (60*5)) {
    e = 2;
  }
 }else if (e == 2) {
    image(fondo2,posX,posY,width,height);
    fill(blanco);
    textFont(t1,18);
    text(texto2,posx2 ,posy2);
 
 if (posy2 >230) {
    posy2-=2;
 
 }if(  miFrameCount == (60*15) ){
      e = 3;  
    }
 
   } else if ( e == 3 ) {
   image(fondo3, 0 ,0, width, height);
     posx3 += 10;
  if (posx3 > width + 100) {
    posx3 = -100;
  } 
   
  fill(verde);
  textSize(36);
  text(titulo3, posx3, posY3);
  
  fill(blanco);
    textFont(t1,tsize3);
    text(titulo3,posX3,posY3);
    textSize(18);
    text(texto3,posxtext3, posytext3);
  
  if (posxtext3<40) {
    posxtext3+=2;
 
 
 }
image(cofreoro,posXoro,posYoro,anchoCofre,altoCofre);
posXoro = posXoro + dir;

if(posXoro + anchoCofre+altoCofre/2 > width) {
    dir=-3;
}

if(posXoro - anchoCofre/2 < 0) {
    dir=3; 
}
 
  }if (miFrameCount == (60*20) ){
      e = 4;  
    } else if ( e == 4) {
    image(fondo4,0,0,width,height);
    fill(0,0,brillo2);
    textFont(t1);
    textSize(20);
    text(texto4, 20,150, width - 40, height - 100);
    

if (brillo2 <100) {
    brillo2 +=1;
    } 
 
  fill(0, 0, brilloP);
    textFont(t1);
    textSize(36);
  text(titulo4,250,100);
  
  if (subirBrillo) {
  brilloP += 2;
  if (brilloP >= 100) {
    subirBrillo = false;
  }
} else {
  brilloP -= 2;
  if (brilloP <= 30) {
    subirBrillo = true;
  }
}
  fill(gris);
  rect( posxrect, posyrect, wrect, hrect );
  
  fill(blanco);
  textFont(t1);
  textSize(20);
  text(boton,  posxtext4, posytext4);
}
}
 
  void mousePressed (){
  if ( mouseX > posxrect && mouseX < posxrect+wrect && mouseY > posyrect && mouseY < posyrect+hrect ) {
      setup();
    e = 1;
    empezarAnimacion = false;
    miFrameCount = 0;
  }
 
 
  }
  
