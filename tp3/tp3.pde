
//https://youtu.be/LBooYwMCxZo

PImage imagen;
float cantidad;
float tam;
color rojo;
color c1, c2;
boolean degradado = false;
 

void setup(){ 
 size(800,400);
 imagen = loadImage("OpArt.jpg");
 reiniciarTrabajo();
 
  cantidad=30;
  tam=570;
  rojo= color(255,0,0);

}

void draw(){
   background(255);
   
 for ( int i = 0 ; i<cantidad; i++ ) {
      
   if (mousePressed) { 
 
  float centroEnX = width / 2 + (width / 4); 
  float centroEnY = height / 2;
  float distanciaAlCentro = dist(mouseX, mouseY, centroEnX, centroEnY);
  
  tam = map(distanciaAlCentro, 0, 200, 100, 570);
    
   }
     pushMatrix();
     translate(width/2+(width / 4),height/2);
     rotate(radians(45));
     dibujarRectangulo(i);
     popMatrix();
     
   }
  
    image(imagen, 0,0);
  
 }
 
