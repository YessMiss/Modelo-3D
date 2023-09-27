PImage textura;
PShape cubo;

void setup() {
  size(800, 800, P3D);
  
  // Carga la textura personalizada
  textura = loadImage("57834.jpg");
  
  // Crea el cubo
  cubo = createShape(BOX, 200);
  cubo.setTexture(textura);
}

void draw() {
  background(200);
  
  // Rota el cubo
  float angulo = radians(frameCount);
  rotateX(angulo);
  rotateY(angulo);
  
  // Dibuja el cubo
  shape(cubo, width/2, height/2);
}
