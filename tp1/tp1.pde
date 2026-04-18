PImage Egipto; 

//Julian Rodriguez Diaz 
//Comision 2
//Legajo: 91443/6

void setup() { 
size (800, 400); 
  Egipto = loadImage("piramides.jpg");
}

void draw() {
  noStroke();
  //Cielo
  fill(251, 199, 65);
  rect(400, 0, 400, 400);
  fill(61, 218, 255);
  rect(400, 0, 400, 180);
  
  //Sol
  fill(255, 248, 61);
  circle(600, 190, 200);
  
  //Nubes
  fill(255);
  ellipse(500, 200, 100, 50);
  ellipse(450, 160, 120, 70);
  ellipse(430, 200, 100, 60);
  
  //Nubes Parte 2
  ellipse(700, 200, 100, 50);
  ellipse(740, 180, 120, 70);
  ellipse(760, 200, 100, 60);
  
  //Tercer Piramide
  fill(137, 81, 41);
  triangle(580, 300, 750, 300, 670, 200);
  fill(212, 126, 48);
  triangle(650, 300, 770, 300, 670, 200);
  
  //Segundo Piramide
  fill(137, 81, 41);
  triangle(500, 300, 600, 180, 700, 300);
  fill(212, 126, 48);
  triangle(540, 300, 600, 180, 700, 300);
  
  //Primer Piramide
  fill(137, 81, 41);
  triangle(450, 300, 520, 220, 600, 300);
  fill(212, 126, 48);
  triangle(460, 300, 520, 220, 600, 300);
  
  //Piramides pequeñas 1
  fill(102, 42, 0);
  triangle(560, 250, 615, 300, 520, 300);
  fill(137, 81, 41);
  triangle(560, 250, 615, 300, 535, 300);
  
  //Piramides pequeñas 2
  fill(102, 42, 0);
  triangle(620, 240, 670, 300, 575, 300);
  fill(137, 81, 41);
  triangle(620, 240, 670, 300, 600, 300);
  
  //Piramides pequeñas 3
  fill(102, 42, 0);
  triangle(685, 255, 730, 300, 650, 300);
  fill(137, 81, 41);
  triangle(685, 255, 730, 300, 675, 300);
  
  //Suelo
  fill(137, 81, 41); 
  rect(400, 300, 400, 100);
  
  //Imagen Piramides
  image(Egipto, 0, 0, 400, 400);
}
