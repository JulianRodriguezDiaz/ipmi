//Julian Rodriguez Diaz
//Comision 2
//Legajo: 91443/6
PImage ilusion;
float inclinacionOriginal = 0.25;
float inclinacionActual;
boolean interactuando = true;

void setup() {
  size(800, 400);
  rectMode(CENTER);  // los cuadrados rotan desde "center"
  ilusion = loadImage("ilusion.jpg");
  inclinacionActual = inclinacionOriginal;
}

void draw() {
  background(128);
  image(ilusion, 0, 0, 400, 400);


  if (mouseX > 400 && mousePressed) { //la interaccion comienza una vez se posa el mouse por la derecha y clickeando (eso luego de reiniciar la ilusion)
    interactuando = true;
  }


  if (interactuando && mouseX > 400) {
    inclinacionActual = inclinacionOriginal + calcularInclinacionInteractiva(mouseX);
  }


  dibujarObraOpArt(600, 200, inclinacionActual); //llamo a la funcion al draw
}


void keyPressed() { //boton de reinicio
  if (key == 'r' || key == 'R' || key == ' ') {
    interactuando = false;
    inclinacionActual = inclinacionOriginal;
  }
}


float calcularInclinacionInteractiva(float posicionMouseX) { //funcion con retorno
  float rotacionExtra = map(posicionMouseX, 400, 800, -0.6, 0.6);
  return rotacionExtra;
}

void dibujarObraOpArt(float centroX, float centroY, float anguloInclinacion) { //funcion sin retorno
  int contadorCuadrados = 0;

 
  for (float radio = 40; radio <= 160; radio += 40) {
    int totalCuadrados = int(radio * 0.35);

    
    for (int i = 0; i < totalCuadrados; i++) {
      float gradosPaso = map(i, 0, totalCuadrados, 0, 360);

      pushMatrix();
      translate(centroX, centroY);     
      rotate(radians(gradosPaso));   
      translate(radio, 0);            

      rotate(anguloInclinacion);    

  
      if (contadorCuadrados % 2 == 0) { //bordes blancos y negros
        stroke(200);
      } else {
        stroke(45);
      }

      noFill();
      strokeWeight(1);
      rect(0, 0, 14, 14); // el dibujo del cuadrado
      popMatrix();

      contadorCuadrados++; 
    }
  }
}
