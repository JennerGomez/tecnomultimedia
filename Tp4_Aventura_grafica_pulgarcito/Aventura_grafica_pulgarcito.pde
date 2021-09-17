Aventura aventuraAP;

void setup() {
  size(800, 600);
  aventuraAP = new Aventura();
}

void draw() {
  background(200);
  aventuraAP.dibujar();
}

void mousePressed() {
  aventuraAP.mousePresionado();
}

void keyPressed() {
  aventuraAP.keyPresionado();
  aventuraAP.reiniciar();
}
