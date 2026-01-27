import oscP5.*;
import netP5.*;

OscP5 oscP5;

float angleX, angleY, angleZ;
float accX, accY, accZ;

void setup() {
  size(600, 400, P3D);
  //PImage smartphoneTexture;
  
  // Inicializa la conexión OSC en el puerto 12000
  oscP5 = new OscP5(this, 12000);
    // smartphoneTexture = loadImage("smartphone_texture.jpg");
 

}

void draw() {
  background(255);
 
  fill(0, 0, 0); // Color rojo
  textSize(12);
  textAlign(LEFT, TOP);
  text("Sensor Acelerómetro de PD", 10, 10);
   fill(255, 0, 0); // Color rojo
  text("Eje X, Y, Z . dejar el smartphone con la pantalla hacia el frente", 10, 30);
  
   // Muestra los valores de los ejes como números
  fill(0);
  textSize(12);
  textAlign(LEFT, TOP);
  text("Sensor Acelerómetro de PD", 10, 10);
  text("Eje X: " + nf(angleX, 1, 2), 10, 50);
  text("Eje Y: " + nf(angleY, 1, 2), 10, 70);
  text("Eje Z: " + nf(angleZ, 1, 2), 10, 90);
  
  
  
 translate(width/2, height/2, 0);// translada cubo al centro 
    
  // se cambian los ejes para que la visulazacion de ajuste a la que al estar flat la cara negra quede encima  
  rotateX(angleY);
   rotateY(-angleX); // se cambio a negativopara que algirar smartphone derecha el eje X e vea a laderecha
  rotateZ(angleZ);
    
   //sphere(50);
  
  
   // diduja GRll 3d
   
  drawGrid(10, width);
 
  // Líneas guía de color rojo para cada eje
  drawAxisGuide(255, 0, 0, 200); // Eje X
  drawAxisGuide(255, 0, 0, 200); // Eje Y
  drawAxisGuide(255, 0, 0, 200); // Eje Z
  
  
 
  
  
   noFill();
  //Dibuja el cubo
  box(50);
    fill(0);
  beginShape();
  vertex(-50, -50, 50); // Esquina inferior izquierda
  vertex(50, -50, 50);  // Esquina inferior derecha
  vertex(50, 50, 50);   // Esquina superior derecha
  vertex(-50, 50, 50);  // Esquina superior izquierda
 
  endShape(CLOSE);
  
 

}

// Método para manejar los mensajes OSC entrantes
void oscEvent(OscMessage theOscMessage) {
  if (theOscMessage.checkAddrPattern("/acelx") == true) {
    // Recibe datos del acelerómetro en tres ejes
    float accX = theOscMessage.get(0).floatValue();
         angleX = map(accX, -1, 1, -PI/2, PI/2);
     }
  if (theOscMessage.checkAddrPattern("/acely") == true) {
    // Recibe datos del acelerómetro en tres ejes
    float accY = theOscMessage.get(0).floatValue();
    // Mapea los datos del acelerómetro a ángulos de rotación
     angleY = map(accY, -1, 1, -PI/2, PI/2);
       }
  if (theOscMessage.checkAddrPattern("/acelz") == true) {
    float accZ = theOscMessage.get(0).floatValue();
    angleZ = map(accZ, -1, 1, -PI/2, PI/2);
    // Mapea los datos del acelerómetro a ángulos de rotación
  }
}


void drawAxisGuide(float r, float g, float b, float len) {
  pushMatrix(); // Guarda la configuración actual de la matriz
  stroke(r, g, b);
  line(-len, 0, 0, len, 0, 0); // Eje X
  line(0, 0, 0, 0, len, 0); // Eje Y
  line(0, 0, 0, 0, 0, len); // Eje Z
  popMatrix(); // Restaura la configuración de la matriz
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
