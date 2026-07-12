PImage Obra;

// Controla cuántos píxeles se reduce el tamaño del cuadrado en cada iteración (a mayor número, menos cuadrados y más distancia entre ellos)
int numCuadrados = 30;

// Guarda el modo de color actual: 0 = blanco/negro, 1 = rojos, 2 = azules, 3 = verdes
int modoColor = 0;

// Cantidad de copias que se repiten alrededor del centro (simetría radial)
int copias = 4;

// Calcula el ángulo total de rotación para una copia "c" dentro de la vuelta "contador"
float calcularAngulo(int contador, int c){
  float rotacionProgresiva = radians(contador * 5);
  float separacionCopias = radians(360.0 / copias * c);
  return rotacionProgresiva + separacionCopias;
}
