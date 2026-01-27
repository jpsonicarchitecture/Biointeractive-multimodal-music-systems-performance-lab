import oscP5.*;

OscP5 oscP5;
float gyroX, gyroY, gyroZ;
float spherePosX, spherePosY, spherePosZ; // Variable para la posición de la esfera en el eje Y
float sphereRadius;


void setup() {
  size(600, 600, P3D);
  frameRate(30);
  
  // Inicia la conexión OSC en el puerto 12000
  oscP5 = new OscP5(this, 12000);
  
}

void draw() {
  background(255);
  
  // Muestra los valores del giroscopio en la esquina superior izquierda
  fill(0);
  text("GyroX: " + gyroX, 10, 20);
  text("GyroY: " + gyroY, 10, 40);
  text("GyroZ: " + gyroZ, 10, 60);
    // Dibuja el sistema de coordenadas 3D
    drawCoordinateSystem();
    //drawSphericalGrid(10, 50); // Parámetros: radio, cantidad de esferas en la grilla
    // Dibuja la esfera en la posición correspondiente al valor del eje Y
 
  
  //drawSphericalGrid(50); // Parámetro: cantidad de esferas en la grilla
  
  
  pushMatrix();
  translate(width / 2, height / 2, 0);
// Dibuja los ejes
 // drawAxes(200);

  // Dibuja la esfera
  stroke(0);
  noFill();
  sphereDetail(6, 6);
  sphere(200);
  popMatrix();
  
  
  pushMatrix();
  
  spherePosY= ((height / 2)+ (gyroY*100));
  spherePosX= ((height / 2)+ (gyroX*100));
  spherePosZ= ((height / 2)+ (gyroZ*100));
  translate(spherePosX, spherePosY, spherePosZ);
  
  fill(255, 0, 0); // Color azul para la esfera //<>//
  lights();
  sphere(7);
  popMatrix();
   
  


}

// Método para manejar los mensajes OSC entrantes
void oscEvent(OscMessage theOscMessage) {
  if (theOscMessage.checkAddrPattern("/girox")) {
    // Recibe los datos del giroscopio desde el mensaje OSC
    gyroX = theOscMessage.get(0).floatValue();
    }
    if (theOscMessage.checkAddrPattern("/giroy")) {
    // Recibe los datos del giroscopio desde el mensaje OSC
    gyroY = theOscMessage.get(0).floatValue();
   
     }
   if (theOscMessage.checkAddrPattern("/giroz")) {
    // Recibe los datos del giroscopio desde el mensaje OSC
    gyroZ = theOscMessage.get(0).floatValue();
  }
  
}

void drawCoordinateSystem() {
  stroke(0);
  
  // Dibuja una línea vertical
  stroke(0, 0, 255); // Azul
  line(width / 2, 100, width / 2, height-100);
  
  // Dibuja una línea horizontal
  stroke(255, 0, 0); // Rojo
  line(50, 300, width-100, height / 2);
  
  // Dibuja una línea diagonal
  stroke(0, 255, 0); // Verde
  line(100, 100, width-100, height-100);
}
