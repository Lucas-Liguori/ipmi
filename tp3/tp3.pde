
//https://youtu.be/DbVsbo6Ps6E
//Interacciones: tecla c, click izquierdo, derecho y ruedita del mouse

void setup(){
  size(800, 400);
  Obra = loadImage("Obra.jpg");
  rectMode(CENTER);
  colorMode(RGB, 255);
}

void draw(){
  background(100);
  image(Obra, 0, 0);
  push();

  int contador = 0;
  //recorre tamaños de cuadrado desde 400 hasta 13
  for(int i = 400; i > 13; i -= numCuadrados){

    if(modoColor == 0){
      if(contador % 2 == 0){
        fill(255);
      } else {
        fill(0);
      }
    } else {
      float progreso = map(i, 400, 13, 0, 1);
      color colorClaro, colorOscuro;

      if(modoColor == 1){
        colorClaro = color(255, 180, 180);
        colorOscuro = color(120, 0, 0);
      } else if(modoColor == 2){
        colorClaro = color(180, 200, 255);
        colorOscuro = color(0, 0, 120);
      } else {
        colorClaro = color(190, 255, 180);
        colorOscuro = color(0, 100, 0);
      }
      fill(lerpColor(colorClaro, colorOscuro, progreso));
    }

    // copias distribuidas alrededor del centro
    for(int c = 0; c < copias; c++){
      //calcula el ángulo de esta copia
      float angulo = calcularAngulo(contador, c);
      //dibuja el cuadrado con ese ángulo
      dibujarCuadrado(i, angulo);
    }

    contador++;

    //Gira rapidamente la obra
    if(mousePressed){
      if(mouseButton == CENTER){
        contador = mouseY++;
      }
    }
  }
  pop();
}
