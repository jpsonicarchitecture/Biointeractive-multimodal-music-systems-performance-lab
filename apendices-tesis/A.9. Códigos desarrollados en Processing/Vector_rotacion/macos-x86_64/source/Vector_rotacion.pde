import oscP5.*;
import netP5.*;

OscP5 oscP5;
float rotX, rotY, rotZ;

void setup() {
  size(600, 600, P3D);
  oscP5 = new OscP5(this, 12000); // Puerto para recibir mensajes OSC
  rotX = rotY = rotZ = 0;
  
  
}

void draw() {
  background(255);
  lights();
  translate(width/2, height/2, 0);
  
  //titulos
  
  
  // Muestra los valores del vector rotacion  en la esquina superior izquierda
  fill(0);
  textSize(20);
  text("Sensor VECTOR de ROTACIÓN de PD", -200, -200);
  textSize(14);
   fill(230, 0, 0); // Color rojo
  text("Ubicar el Smartphone con el display hacia arriba para calibrar", -200, -180);
  
  
  textSize(14);
   fill(40, 0, 0); // Color rojo
  text("Tesis Doctoral - Posada Juen Pablo Posada A.", -200, 180);
 
  textSize(11);
   fill(0, 0, 0); // Color rojo
  text("Diseño y desarrollo de Sistemas MMHCI para muica mixta y electroacustica P.", -200, 200);
  
  
  text("rotX: " + rotX, -180, -60);
  text("rotY: " + rotY, -180, -40);
  text("rotZ: " + rotZ, -180, -20);
  
  
  rotateX(rotX);
  rotateY(rotY);
  rotateZ(rotZ);
  
  // Dibujar las líneas de los ejes x, y, z
  fill(100);
  ellipse(-150, 0, 30, 30);
  strokeWeight(2);
  stroke(255, 0, 0); // Eje x en rojo
  line(-50, 0, 0, 50, 0, 0);
  stroke(0, 255, 0); // Eje y en verde
  line(0, -50, 0, 0, 50, 0);
  stroke(0, 0, 255); // Eje z en azul
  line(0, 0, -50, 0, 0, 50);
  
  
  drawCube();
  
   // Dibujar la palabra "front" en la cara frontal del cubo
  pushMatrix();
  translate(0, 0, 50); // Mover al frente del cubo
  fill(0); // Color negro para el texto
  textSize(12); // Tamaño de la fuente
  text("Costado", -22, -20); // Posicionar el texto en la parte superior izquierda de la cara frontal
   text("frontal", -18, 0);
    text("Smartphone", -29, 20);
  popMatrix();
  
   // Dibujar la palabra "superior" en la cara superior del cubo
  pushMatrix();
  translate(0, -50, 0); // Mover a la cara superior del cubo
  fill(0); // Color negro para el texto
  textSize(18); // Tamaño de la fuente
  text("DISPLAY", -35, -10); // Posicionar y dibujar el texto
  popMatrix();
  
  // Dibujar la palabra "tapa trasera" en la cara inferior del cubo
  pushMatrix();
  translate(0, 50, 0); // Mover a la cara inferior del cubo
  fill(0); // Color negro para el texto
  textSize(18); // Tamaño de la fuente
 // text("tapa trasera", -45, -5); // Posicionar y dibujar el texto
   text("tapa trasera", -45, 20);
  popMatrix();
  
    // diduja GRll 3d
   //drawGrid(10, width);
  
  
  
  
}

void drawCube() {
  stroke(0);
  fill(150);
  box(100);
  
   // Dibujar línea roja que atraviesa el cubo por el eje X
  stroke(255, 0, 0);
  line(-150, 0, 0, 150, 0, 0);
  
   // Dibujar línea azul que atraviesa el cubo por el eje Y
  stroke(0, 0, 255); // Color azul
  line(0, -150, 0, 0, 150, 0); // Desde el centro del cubo hacia arriba y abajo
}

void oscEvent(OscMessage theOscMessage) {
  if (theOscMessage.checkAddrPattern("/rotationX")) {
    rotX = theOscMessage.get(0).floatValue();
  } else if (theOscMessage.checkAddrPattern("/rotationY")) {
    rotY = theOscMessage.get(0).floatValue();
  } else if (theOscMessage.checkAddrPattern("/rotationZ")) {
    rotZ = theOscMessage.get(0).floatValue();
  }
}


void drawHorizonGrid() {
  stroke(200);
  for (int i = -5; i <= 5; i++) {
    line(-250, i * 50, 0, 250, i * 50, 0); // Líneas horizontales
    line(i * 50, -250, 0, i * 50, 250, 0); // Líneas verticales
  }
}


void drawGrid(float spacing, float size) {
  pushMatrix();
  stroke(210);
  strokeWeight(1);
  for (float i = -size/2; i <= size/2; i += spacing) {
    line(i, -size/2, 0, i, size/2, 0);
    line(-size/2, i, 0, size/2, i, 0);
  }
  for (float i = -size/2; i <= size/2; i += spacing) {
    line(0, -size/2, i, 0, size/2, i);
  }
  popMatrix();
}
