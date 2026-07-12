
void mousePressed(){
  if(mouseButton == RIGHT){
    numCuadrados++;
  } else if(mouseButton == LEFT){
    numCuadrados--;
  }
  numCuadrados = constrain(numCuadrados, 1, 387);
}

void keyPressed(){
  // Barra espaciadora: reinicia todas las variables a su estado original
  if(key == ' '){
    numCuadrados = 30;
    modoColor = 0;
  }

  // Tecla C: avanza al siguiente modo de color
  if(key == 'c'){
    modoColor = (modoColor + 1) % 4;
  }
}

// Funcion propia que no retorna un valor
// Dibuja un cuadrado de tamaño "tamano" rotado "angulo" radianes, centrado en (600, height/2)
void dibujarCuadrado(float tamano, float angulo){
  pushMatrix();
  translate(600, height/2);
  rotate(angulo);
  square(0, 0, tamano);
  popMatrix();
}
