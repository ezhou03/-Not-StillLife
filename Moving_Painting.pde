color skull = color(#E1AD49);
float brightness = mouseY;
float saturation;
int csize;

void setup() {
  size(900, 600);
}
//table scene
void draw() {
  background(#1E1C0F);
  noStroke();
  fill(#4A3730);
  beginShape();
    vertex(0, 550);
    vertex(0, 450);
    vertex(100, 400);
    vertex(900, 400);
    vertex(900, 550);
  endShape(CLOSE);
  fill(#282619);
  beginShape();
    vertex(0, 550);
    vertex(900, 550);
    vertex(900, 600);
    vertex(0, 600);
  endShape(CLOSE);
  colorMode(HSB, 360, 100, 100);
  blendMode(NORMAL);
  
  //candle holder
  fill(#171806);
  //ellipse(460, 460, 200, 75); 
  quad(460, 490, 600, 450, 600, 400, 350, 400);
  noStroke();
  fill(#55401C);
  ellipse(350,480, 250, 55); 
  stroke(#55401C);
  strokeWeight(10);
  ellipse(350, 425, 300, 55); 
  stroke(#55401C);
  strokeWeight(2);
  beginShape();
  line(200, 433, 500, 433);
  bezier(200, 433, 235, 460, 200, 460, 235, 489);
  line(465, 489, 235, 489);
  bezier(500, 433, 465, 460, 500, 460, 465, 489);
  quad(210, 433, 491, 433, 470, 485, 229, 485);


//skull
noStroke();
fill(#171806);
quad(650, 500, 900, 450, 900, 400, 650, 400);
fill(#4E4738);
quad(650, 500, 650, 400, 725, 400, 660, 490);
fill(#EEE1B4);
ellipse(660, 300, 275, 300);
quad(535, 300, 690, 300, 650, 500, 520, 475);
circle(534, 475, 28);
circle(566, 482, 30);
circle(600, 489, 31);
circle(634.5, 495, 32);
//eyes
float pupil = map(mouseX, 0, width, 530, 580);
float pupil2 = map(mouseX, 0, width, 630, 700);
fill(#1E1C0F);
ellipse(550, 300, 90, 80);
ellipse(665, 320, 95, 85);
quad(580, 370, 600, 370, 610, 420, 550, 400);
fill(#C03F2D, 100);
circle(pupil, 300, 30);
circle(pupil2, 320, 30);
fill(#C03F2D);
circle(pupil, 300, 20);
circle(pupil2, 320, 20);


  endShape(CLOSE);
  noStroke();
  //candle
  fill(55, 20, 94);
  rect(325, 290, 50, 200,   20,20,15,15);
  
  float wax = map(mouseY, 0, height, 320, 390);
  circle(325, wax, 20);
  circle(333, wax-15, 20);
  circle(365, wax+50, 25);
  circle(370, wax+30, 20);
  fill(20);
  rect(345, 275, 10, 28,   15,15,20,20);
  fill(54, 80, 82);
  //line(350, 250, 375, 275);
  //line(400, 325, 350, 325);
  bezier(350, 220, 345, 235, 400, 280, 350, 285);
  bezier(350, 220, 335, 235, 300, 280, 350, 285);
  
  
  fill(#55401C);
  rect(325, 450, 50, 50);
  fill(55, 20, 94);
  ellipse(350, 450, 50, 5);
  
  noStroke();
  fill(#B8653B);
  //circle(500, 300, 200);
  blendMode(SCREEN);
  brightness = map(mouseY, 0, height, 0, 100);
  fill(45, 75, brightness);
  csize = 600-mouseY;
  //circle(350, 250, csize);
  println(mouseY);
  if(mouseY <= 500) {
    circle(350, 250, csize-100);
  }
  if(mouseY <= 400) {
    circle(350, 250, csize-200);
  }
  if(mouseY <= 300) {
    circle(350, 250, csize-300);
  }
  if(mouseY <= 200) {
    circle(350, 250, csize-400);
  }

blendMode(NORMAL);
fill(#95583D);
rect(0, 0, 20, 600);
rect(0, 0, 900, 20);
rect(880, 0, 20, 600);
rect(0, 580, 900, 20);


save("EricExercise2.jpg");
}
