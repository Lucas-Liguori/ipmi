PImage sabana;

void setup(){

size(800, 400);
sabana = loadImage("sabana.jpg");

}
void draw(){
background(225,225,225);
image(sabana, 0, 0);

fill(255,215,100);
rect(400, 267, 800, 150);

fill(0, 191, 255, 20);
noStroke();
triangle(350, 0, 800, 0, 800, 120);

fill(0,191,255, 50);
triangle(400, 0, 800, 0, 800, 30);

fill(184, 134, 20);
rect(550,170,15,100);

fill(74,130,79);
ellipse(555, 150, 250, 60);

fill(184, 134, 20);
rect(435, 233, 3, 35);

fill(74,130,79);
rect(425,230,30,6);

//println(mouseX + "/" + mouseY);
}
