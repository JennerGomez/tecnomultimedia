class Boton {
  int posX, posY, ancho, alto;
  Aventura aventura;
  int pantallaId;
  String texto;

  Boton(int pposX, int pposY, int pancho, int palto, int ppantallaId, 
    Aventura paventuraAB, String ptexto) {
    posX = pposX;
    posY = pposY;
    ancho = pancho;
    alto = palto;
    pantallaId = ppantallaId;
    aventuraAP = paventuraAB;
    texto = ptexto;
  }

  void dibujar() {
    strokeWeight(3);
    strokeJoin(ROUND);
    fill(255, 230);
    rect(posX, posY, ancho, alto);
    PFont font; 
    font = loadFont("SharpGroteskSmBold20-Regular-48.vlw");
    textFont(font);
    fill(0);
    textSize(20);
    textAlign(CENTER, CENTER);
    text(texto, posX+75, posY+27);
  }

  void mousePresionado() {
    if (mouseX > posX && mouseX <posX + ancho && mouseY > posY &&
      mouseY < posY + alto) {
      aventuraAP.cambioPantalla(pantallaId);
    }
  }
}
