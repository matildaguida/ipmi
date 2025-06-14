
void dibujarRectangulo(int i) {
 
  rectMode(CENTER);
  noFill();
  strokeWeight(5);
  rect(0, 0, i * (tam / cantidad), i * (tam / cantidad));
  stroke(rojo);
  circle(0, 0, 4);
  
  
  if (degradado) {
    stroke(obtenerColor(i)); 
  } else {
    stroke(0);
  }
  
}

color obtenerColor(int i) {
  float amt = map(i, 0, cantidad, 0, 1);
  return lerpColor(c1, c2, amt);
}

void keyPressed() {
  if (key == ' ') {
    reiniciarTrabajo(); 
  } else {
     degradado = true;
    c1 = color(random(256), random(256), random(256));
    c2 = color(random(256), random(256), random(256));
    
  }
 
}

void reiniciarTrabajo() {
  cantidad = 30;
  tam = 570;
  rojo = color(255, 0, 0);
  c1 = color(random(256), random(256), random(256));
  c2 = color(random(256), random(256), random(256));
  degradado = false;
  }
