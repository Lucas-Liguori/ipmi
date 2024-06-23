PImage imagen;
int cant=5;
int tam;

void setup(){
size (800, 400);
imagen=loadImage("imagen.jpg");
tam=width/cant;
}

void draw(){
background(255);
image(imagen,0,0);

}

void grilla(){
  fill(0);
for (int i = 400; i < width; i = i++) {
  ellipse(i*tam,0,tam,tam);
  
}
}
