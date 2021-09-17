class Aventura {
  int cantPantallas =22;
  Pantalla [] pantallas = new Pantalla [cantPantallas];
  int pantallaActivaId = 0;

  Aventura() {
    //Pantalla 0
    PImage fondo = loadImage("pantalla0.png");
    Boton [] botones = new Boton [3];
    botones[0] = new Boton(600, 200, 150, 60, 1, this, "INICIO");
    botones[1] = new Boton(600, 275, 150, 60, 21, this, "Diagrama");
    botones[2] = new Boton(600, 350, 150, 60, 6, this, "Creditos");
    pantallas[0] = new Pantalla("Los papás de pulgarcito se encuentran en una difícil situación económica y deciden deshacerse de sus hijos abandonandolos en el bosque.", fondo, botones, true, 0);

    //Pantalla 1
    fondo = loadImage("pantalla1.png");
    botones = new Boton [1];
    botones[0] = new Boton(600, 350, 150, 60, 2, this, "Next");
    pantallas[1] = new Pantalla("Pulgarcito escucha el plan de sus padres mientras está oculto", fondo, botones, false, 0);

    //Pantalla 2
    fondo = loadImage("pantalla2.png");
    botones = new Boton [2];
    botones[0] = new Boton(400, 200, 150, 60, 3, this, "Coge piedra");
    botones[1] = new Boton(600, 400, 150, 60, 7, this, "Coge piedra");
    pantallas[2] = new Pantalla("Pulgarcito decide ir al rio a recoger piedras para dejar de camino al bosque y saber por donde devolverse", fondo, botones, false, 0);

    //Pantalla 3
    fondo = loadImage("pantalla3.png");
    botones = new Boton [1];
    botones[0] = new Boton(600, 400, 150, 60, 4, this, "Next");
    pantallas[3] = new Pantalla("Al día siguiente, los papás llevan a sus siete hijos adentro del bosque con la excusa de cortar leña y recoger paja", fondo, botones, false, 0);


    //Pantalla 4
    fondo = loadImage("pantalla4.png");
    botones = new Boton [1];
    botones[0] = new Boton(600, 300, 150, 60, 5, this, "Seguir");
    pantallas[4] = new Pantalla("Pulgarcito dejó piedras en el camino para saber por donde regresar", fondo, botones, false, 0);

    //Pantalla 5
    fondo = loadImage("pantalla5.png");
    botones = new Boton [1];
    botones[0] = new Boton(600, 400, 150, 60, 10, this, "Next");
    pantallas[5] = new Pantalla("Una vez en el bosque, en medio de la niebla, los papás se alejan corriendo abandonando los 7 niños", fondo, botones, false, 0);

    //Pantalla 6 - Creditos
    fondo = loadImage("pantalla6.png");
    botones = new Boton [1];
    botones[0] = new Boton(650, 520, 150, 60, 0, this, "volver");
    pantallas[6] = new Pantalla("", fondo, botones, false, 0);

    //Pantalla 7
    fondo = loadImage("pantalla7.png");
    botones = new Boton [1];
    botones[0] = new Boton(600, 300, 150, 60, 8, this, "¡Bingo!");
    pantallas[7] = new Pantalla("En el rio Pulgarcito se encuentra una piedra de oro de un tamaño considerable", fondo, botones, false, 0);

    //Pantalla 8
    fondo = loadImage("pantalla8.png");
    botones = new Boton [1];
    botones[0] = new Boton(600, 400, 150, 60, 9, this, "Next");
    pantallas[8] = new Pantalla("Pulgarcito le lleva la piedra de oro a sus padres y con esto desisten de abandonar sus hijos en el bosque", fondo, botones, false, 0);

    //Pantalla 9 - Final Alternativo 1
    fondo = loadImage("pantalla9.png");
    botones = new Boton [1];
    botones[0] = new Boton(320, 400, 150, 60, 9, this, "dale espacio"); //reinicia
    pantallas[9] = new Pantalla("Con el dinero compran mucha comida y hacen una gran cena para celebrar que salieron de la pobreza ", fondo, botones, false, 0);

    //Pantalla 10
    fondo = loadImage("pantalla10.png");
    botones = new Boton [1];
    botones[0] = new Boton(50, 300, 150, 60, 11, this, "Next");
    pantallas[10] = new Pantalla("Los siete hermanos se asustan pero Pulgarcito los guía de nuevo a casa por el camino de piedras que dejó", fondo, botones, false, 0);

    //Pantalla 11
    fondo = loadImage("pantalla11.png");
    botones = new Boton [1];
    botones[0] = new Boton(600, 400, 150, 60, 12, this, "Next");
    pantallas[11] = new Pantalla("Al llegar a casa escuchan a sus padres gozar de un festín gracias a una deuda que les pagaron, pero tristes y desolados por la ausencia de sus hijos, enseguida entran a la casa y se reencuentran", fondo, botones, false, 0);

    //Pantalla 12
    fondo = loadImage("pantalla12.png");
    botones = new Boton [1];
    botones[0] = new Boton(600, 300, 150, 60, 13, this, "Next");
    pantallas[12] = new Pantalla("Al caer nuev  amente en la pobreza, los papás deciden repetir la estrategia de abandonar a sus hijos en el bosque, pero esta vez, aseguran la puerta para que Pulgarcito no salga a buscar piedras", fondo, botones, false, 0);

    //Pantalla 13
    fondo = loadImage("pantalla13.png");
    botones = new Boton [2];
    botones[0] = new Boton(600, 400, 150, 60, 15, this, "A la derecha"); 
    botones[1] = new Boton(100, 400, 150, 60, 14, this, "A la izquierda"); 
    pantallas[13] = new Pantalla("Pulgarcito decide llevar el pan del desayuno y dejar migajas por el camino, pero los cuervos se las comen y una vez sus padres los abandonan no tienen como volver a casa. ¿Por dónde vamos?", fondo, botones, false, 0);

    //Pantalla 14
    fondo = loadImage("pantalla14.png");
    botones = new Boton [1];
    botones[0] = new Boton(600, 300, 150, 60, 17, this, "Next");
    pantallas[14] = new Pantalla("Los 7 hermanos deciden caminar por el bosque en busca del camino regreso a su casa pero terminan en la casa de un Ogro que come niños.", fondo, botones, false, 0);

    //Pantalla 15 -
    fondo = loadImage("pantalla15.png");
    botones = new Boton [1];
    botones[0] = new Boton(600, 300, 150, 60, 16, this, "next");
    pantallas[15] = new Pantalla("Los 7 hermanos se pierden en el denso bosque de noche y son emboscados por una manada de Lobos", fondo, botones, false, 0);

    //Pantalla 16 -
    fondo = loadImage("pantalla16.png");
    botones = new Boton [1];
    botones[0] = new Boton(600, 400, 150, 60, 18, this, "next");
    pantallas[16] = new Pantalla("Pulgarcito se sacrifica y le dice a sus hermanos que salgan corriendo y escapen con vida", fondo, botones, false, 0);
    
    //Pantalla 17
    fondo = loadImage("pantalla17.png");
    botones = new Boton [2];
    botones[0] = new Boton(500, 400, 150, 60, 20, this, "Correr");
    botones[1] = new Boton(200, 400, 150, 60, 19, this, "Ocultarse");
    pantallas[17] = new Pantalla("El Ogro intenta comerse a los niños pero Pulgarcito se las ingenia y logra escapar con todos ellos, llevándose además riquezas que el Ogro poseía", fondo, botones, false, 0);
    
    //Pantalla 18 - Final Alternativo 2
    fondo = loadImage("pantalla18.png");
    botones = new Boton [1];
    botones[0] = new Boton(650, 520, 150, 60, 0, this, "volver");
    pantallas[18] = new Pantalla("Los hermanos logran llegar a la villa donde componen una banda de Jazz y se vuelven famosos y titulan la banda los Siete menos uno", fondo, botones, false, 0);
    
    //Pantalla 19 - Final Original
    fondo = loadImage("pantalla19.png");
    botones = new Boton [1];
    botones[0] = new Boton(600, 400, 150, 60, 0, this, "next");
      pantallas[19] = new Pantalla("Pulgarcito y sus hermanos logran encontrar el camino a casa y logran vivir tranquilos con sus papás con las riquezas que le arrebataron al Ogro. ", fondo, botones, false, 0);
      
      //Pantalla 20 - Final Original
    fondo = loadImage("pantalla20.png");
    botones = new Boton [1];
    botones[0] = new Boton(600, 400, 150, 60, 0, this, "Next");
      pantallas[20] = new Pantalla("Sin embargo el ogro logra dar con los hermanos y esto significa el fin de su historia :(", fondo, botones, false, 0);
    
    //Pantalla 21 - Diagrama de Flujo
    fondo = loadImage("pantalla21.png");
    botones = new Boton [1];
    botones[0] = new Boton(650, 520, 150, 60, 0, this, "volver");
    pantallas[21] = new Pantalla("", fondo, botones, false, 0);
   
  }

  void dibujar() {
    for (int p=0; p<cantPantallas; p++) {
      if (pantallas[p].estaActiva()) {
        pantallas[p].dibujar();
      }
    }
  }
  
  void mousePresionado() {
    for (int p=0; p<cantPantallas; p++) {
      if (pantallas[p].estaActiva()) {
        pantallas[p].mousePresionado();
      }
    }
  }

  void keyPresionado() {
    for (int p=0; p<cantPantallas; p++) {
      if (pantallas[p].estaActiva()) {
        if (pantallas[p].tieneJuego()) {
          pantallas[p].keyPressedJuego();
        }
      }
    }
  }

  void cambioPantalla(int pantallaId) {

    for (int p=0; p<cantPantallas; p++) {
      if (p == pantallaId) {
        pantallas[p].activa = true;
      } else {
        pantallas[p].activa = false;
      }
    }
  }

  void reiniciar() {

    if ( key == ' ' && pantallas[5].activa|| pantallas[6].activa || pantallas[9].activa || pantallas[13].activa|| pantallas[14].activa){ 
      setup();
    }
  }
}
