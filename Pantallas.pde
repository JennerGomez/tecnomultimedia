class Pantalla {
  String texto;
  PImage fondo;
  Boton [] botones;
  boolean activa;

  int poseejuego;

  Pantalla(String ptexto, PImage pfondo, Boton [] pbotones, boolean pactiva, int PoseeJuegos) {
    texto = ptexto;
    fondo = pfondo;
    botones = pbotones;
    activa = pactiva;
    poseejuego = PoseeJuegos;
  }
  
  void dibujar() {

    if (tieneJuego()) {
      dibujarJuego();
    } else {
      if (estaActiva()) {
        image(fondo, 0, 0, width, height);
        textSize(20);
        fill(0);
        text(texto, 70, 50, 650, 100);
        for (int b=0; b<botones.length; b++) {
          botones[b].dibujar();
        }
      }
    }
  }

  void mousePresionado() {
    if (estaActiva()) {
      if (tieneJuego()) {
      } else {
        for (int b=0; b<botones.length; b++) {
          botones[b].mousePresionado();
        }
      }
    }
  }

  void keyPresionado() {
    if (estaActiva()) {
      if (tieneJuego()) {
        keyPressedJuego();
      }
    }
  }



  boolean estaActiva() {
    return activa;
  }

  boolean tieneJuego() {
    return poseejuego != 0;
  }

  void dibujarJuego() {
  }

  void keyPressedJuego() {
  }
}

  
