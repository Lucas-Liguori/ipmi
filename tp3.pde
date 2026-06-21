//codigo claramente incompleto
  
  PImage Obra;
  
  
  void setup(){
  size(800, 400);
  Obra = loadImage("Obra.jpg");
  rectMode(CENTER);
  
  }
  
  void draw(){
  background(100);
  image(Obra, 0, 0);
  push();
  for(int i = 4; i>1; i = 0){
  for(int j = 400; j>13; j -=30){
    
  square(600, height/2,j);
  
  
    }
  
  }
  
  pop();
  
  }
  
