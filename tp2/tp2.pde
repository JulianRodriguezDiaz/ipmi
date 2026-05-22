//Julian Rodriguez Diaz
//Comision 2
//Legajo: 91443/6
String estado; //pantallas
int c; //contador
float fade; //opacidad del texto
PImage undertalemenu;
PImage p1;
PImage p2;
PImage p3;
PImage p4;
PImage fin;
PFont font;

 void setup() {
  size (640, 480);
 font = loadFont("DeterminationSansWebRegular-369X.vlw");
 textFont(font);
 undertalemenu = loadImage("undertalemenu.jpg");
 p1 = loadImage("p1.png");
 p2 = loadImage("p2.png");
 p3 = loadImage("p3.png");
 p4 = loadImage("p4.png");
 fin = loadImage("fin.png");
 estado = "undertalemenu";
 frameRate(60);
}

void draw(){
  background(0);
   
   //MAQUINA DE ESTADOS--;
   
  if( estado == "undertalemenu") {
  image(undertalemenu, 35,0);
textSize(20);
text( "[ presiona abajo ]" , 250,300 );
dibujarBoton();

//
} else if (estado.equals("p1")) {
  image(p1,CENTER,50);
  textSize(20);
  
  fill(255, 255, 255, fade); //Este IF seria para la opacidad del texto
  if (fade < 255) { 
    fade +=5;
  }

  text( "Existe una leyenda transmitida" , 200,380);
  text( "desde tiempos antiguos:", 220,420);
  text("LA LEYENDA DEL DELTARUNE.", 200,460);
  c++; //suma 1 per frame
  if ( c >= 300 ) { // 60fps * 5seg = 300
  estado = "p2";
  c = 0; // RESET DE VARIABLE CONTADOR
  fade = 0; //RESET DE LA OPACIDAD DEL TEXTO
  }
  //
  } else if(estado.equals("p2")) {
    image(p2,20,10);
    textSize(20);
    
    fill(255, 255, 255, fade); //Este IF seria para la opacidad del texto se repite como las pantallas
  if (fade < 255) {
    fade +=5;
  }
  
    text( "Predice el nacimiento de", 220, 380);
    text( "tres HÉROES para salvar el mundo:", 180, 420);
    text( "un Humano, un Monstruo y un Príncipe.", 160, 460);
    c++; // suma 1 per frame
if ( c >= 600 ) { // 60fps * 10seg = 600
estado = "p3";
c = 0;
fade = 0;
}
} else if(estado.equals("p3")) {
  image(p3,20,10);
  textSize(20);
  
  fill(255, 255, 255, fade); 
  if (fade < 255) {
    fade +=5;
  }
  
  text("Ellos deberán sellar las", 235, 380);
  text("Fuentes Oscuras que amenazan", 200,420);
  text("con sumergir la Tierra en tinieblas.", 195, 460);
  c++; //suma 1 per frame
  if ( c >= 600 ) { // 60fps * 10seg = 600
estado = "p4";
c = 0;
fade = 0;
}
} else if(estado.equals("p4")) {
  image(p4,20,10);
  textSize(20);
  
  fill(255, 255, 255, fade);
  if (fade < 255) {
    fade +=5;
  }
  
  text("Solo así lograrán mantener", 200, 380);
  text("el EQUILIBRIO entre la Luz", 200, 420);
  text("y la Oscuridad...", 240, 460);
  c++; // suma 1 per frame
if ( c >= 300 ) { // 60fps * 5seg = 300
estado = "fin";
c = 0;
fade = 0;
} 
}else if (estado.equals("fin")) {
  image(fin,0,0);
  textSize(25);
text( "[ FIN presiona arriba ]" , 210, 450 );
dibujarBoton();
} 
}
void mousePressed(){
if (estado.equals("undertalemenu") && (dist (width/2, height/4*3, mouseX, mouseY) < 50/2)) {
 estado = "p1";
}
if (estado.equals("fin") && (dist (width/2, height/4*3, mouseX, mouseY) < 50/2)) {
    estado = "undertalemenu";
  }
}
void dibujarBoton() { //funcion Propia para el boton
  fill(255); 
  noStroke(); 
  circle(width/2, height/4*3, 50);
}
