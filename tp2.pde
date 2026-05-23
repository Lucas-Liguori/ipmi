int Pantalla;
String Texto1;
String Texto2;
String Texto3;
String Texto4;
String Texto5;
PImage Imagen1;
PImage Imagen2;
PImage Imagen3;
PImage Imagen4;
PImage Imagen5;
float PosX;
float PosY;
float velocidad;
int tiempo;
float tamTexto;
float transparencia;
void setup() {

  size(640, 480);
  
  Imagen1 = loadImage("Imagen1.jpg");
  Imagen2 = loadImage("Imagen2.jpg");
  Imagen3 = loadImage("Imagen3.jpg");
  Imagen4 = loadImage("Imagen4.jpg");
  Imagen5 = loadImage("Imagen5.jpg");
  
  Texto1 = "Doom Eternal es un juego desarrollado por id Software en el año 2020.";
  Texto2 = "El juego continua la historia\n del Doom Slayer y su travesia\n en busca de eliminar a todos los\n demonios y salvar a la humanidad.";
  Texto3 = "El juego consta de eliminaar a todos\n los demonios que se interpongan\n en tu camino en un frenesi\n sangriento cuasi-constante";
  Texto4 = "Derrota a tus enemigos y avanza al\n siguiente nivel de tu travesía";
  Texto5 = "Contra todo el mal que el Infierno\n pueda conjurar, contra toda la maldad\n que la humanidad pueda producir,\n les enviaremos... solo a ti. Desgarra\n y destroza, hasta que se cumpla";
  
}

void draw() {

  switch(Pantalla) {
  case 0:
  background(0);
    textAlign(LEFT);
    textSize(40);
    PosX = width/2;
    PosY = 0;
    Pantalla = 0;
    velocidad = 0.05;
    tiempo = 0;
    tamTexto = 12;
    Pantalla = 1;
    break;
  case 1:
    image(Imagen1, 0, 0);
    Imagen1.resize(640, 480);
    tiempo++;
    println("pantalla 1 ", tiempo);
    if (tiempo >= 1000) {
      tiempo = 0;
      Pantalla = 2;
    }
    fill(0);
    text(Texto1, PosX, 200);
    if (width > PosX) {
      PosX -= 1;
    }

    break;

  case 2:
  background(0);
    image(Imagen2, 0, 0);
    Imagen2.resize(640, 480);
    tiempo++;
    println("pantalla 2 ", tiempo);
    if (tiempo >= 1000) {
      tiempo = 0;
      Pantalla = 3;
      PosY = 400;
      velocidad = 0.5;
    }
    if ( 1400 > tiempo) {
      fill(255);
      textSize(tamTexto);
      tamTexto += velocidad;
      text(Texto2, 20, 200);
    }
    break;

  case 3:
background(0);
    textSize(40);
    image(Imagen3, 0, 0);
    Imagen3.resize(640, 480);
    tiempo++;
    println("pantalla 3 ", tiempo);
    if (tiempo >= 1000) {
      tiempo = 0;
      Pantalla = 4;
    }
    fill(255);
    text(Texto3, 40, PosY);
    if (height > PosY) {
      PosY -= velocidad;
    }
    break;

  case 4:
background(0);
    textSize(40);
    image(Imagen4, 0, 0);
    Imagen4.resize(640, 480);
    tiempo++;
    println("pantalla 4 ", tiempo);
    if (tiempo >= 1000) {
      tiempo = 0;
      Pantalla = 5;
    }
    fill(255);
    text(Texto4, 40, PosY);
    if (height > PosY) {
      PosY += velocidad;
    }
    break;

  case 5:
background(0);
    textSize(40);
    image(Imagen5, 0, 0);
    Imagen5.resize(640, 480);
    velocidad++;
    tiempo++;
    println("pantalla 5 ", tiempo);
    if (tiempo >= 1000) {
      tiempo = 0;
      Pantalla = 6;
    }
    fill(velocidad, 0, velocidad);
    textAlign(CENTER);
    text(Texto5, 320, 240);
    if (tiempo >= 500) {
    fill(velocidad--, 0, velocidad--);
    }
    break;



  case 6:
  background(0);
    image(Imagen5, 0, 0);
    Imagen5.resize(640, 480);
    fill(255);
    rect (60, 60, 200, 80);
    fill(0);
    textSize(52);
    textAlign(CENTER);
    text("Reiniciar", 160, 110);
    if (mouseButton==LEFT && mouseX>=60 && mouseX<=260 && mouseY>=60 && mouseY<=140) {
      Pantalla = 0;
    }
    break;
  }
}
