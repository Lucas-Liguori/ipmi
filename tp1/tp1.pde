PImage Monumento;


void setup(){
size(800,400);
background(255);
Monumento = loadImage("Monumento.jpg");
textSize(7);
}

void draw(){
background(105, 148, 232);
fill(220, 200);
rect(400, 229, 800, 400);
strokeWeight(1);
image(Monumento, 0, 0);
println(mouseX, mouseY);
stroke(120, 100, 100);
fill(99, 90, 82);
stroke(0);
quad(539, 78, 507, 326, 704, 326, 668, 78 );
strokeWeight(5);
stroke(80,60, 60);
line(566, 75, 644, 75);
strokeWeight(1);
rectMode(CORNERS);
stroke(0);
rect(577, 64, 631, 74);
fill(86, 88, 91);
circle(604, 32, 60);
fill(99, 90, 82);
rect(585, 55, 623, 63);
rect(496, 327, 714, 331);
quad(491, 332, 721, 332, 724, 359, 488, 359);
fill(200, 171, 150);
quad(498, 353, 715, 353, 738, 371, 474, 371);
fill(99, 90, 82);
rect(439, 285, 456, 290);
quad(457, 285, 461, 288, 460, 291, 456, 293);
quad(431, 291, 459, 291, 459, 356, 417, 356);
quad(459, 291, 466, 297, 466, 355, 459, 356);
rect(400, 356, 472, 367);
quad(473, 356, 487, 361, 484, 370, 473, 367);
quad(400, 366, 488, 366, 486, 400, 400, 400);
quad(487, 366, 502, 373, 502, 400, 487, 400);
quad(755, 283, 773, 283, 773, 290, 755, 291);
quad(751, 287, 755, 283, 755, 290, 752, 290);
quad(752, 289, 781, 289, 795, 356, 752, 356);
quad(745, 295, 751, 291, 751, 356, 744, 355);
quad(739, 355, 800, 356, 800, 367, 739, 367);
quad(724, 362, 739, 355, 739, 367, 725, 367);
quad(726, 367, 800, 367, 800, 400, 726, 400);
quad(711, 372, 725, 368, 725, 400, 709, 400);
rect(501, 372, 710, 382);
rect(499, 382, 712, 393);
rect(495, 393, 715, 400);
strokeWeight(4);
stroke(112, 83, 53);
rect(598, 104, 608, 115, 2);
strokeWeight(1);
stroke(100, 80, 80);
rect(579, 152, 633, 271);
stroke(0, 128);
strokeWeight(3);
line(578, 154, 578, 270);
fill(0, 128);
noStroke();
quad(577, 271, 632, 272, 630, 278, 577, 278);
fill(80, 80, 80);
stroke(140, 120, 120);
strokeWeight(1);
ellipse(605, 303, 30, 34);
fill(0);
text("   sfdfsdfdsdfs \n     sfddfsdw \n      werwerf \n        eqrew \n           rwe \n      rwerwerw \n       werrewd \n     werwerrefg \n  wrwwrerwefdf \n    werweghjyyj \n            fdgd ", 583, 176);
noStroke();
fill(0, 110);
ellipse(605, 43, 56, 30);
fill(255, 110);
ellipse(612, 10, 15, 11);
fill(0, 110);
ellipse(585, 33, 20, 40);
quad(585, 55, 609, 55, 603, 65, 585, 65);


}
