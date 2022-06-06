void intro(){
  background(0);
   fill(colorchange);
  textSize(countersize);
  text("BULLET",200,200);
  text("HELL",300,400);
  stroke(black);
  fill(white);
  tactilerectangle(400,600,200,100);
  rect(400,600,200,100);
  fill(purple);
  textSize(50);
  
  text("S",330,620);
  text("T",360,620);
  text("A",385,620);
  text("R",420,620);
  text("T",450,620);
  if (countersize>120) {
    countersize=10;
  }
  else{
    countersize+=1; 
  }
  if (countersize<60) {
    countersize+=1;
  }
    //colorchange
  counter+=1;
  if (counter==10) {
    colorchange=blue;
  }
  if (counter==20) {
    colorchange=darkbrown;
  }
  if (counter==30) {
   colorchange=green; 
  }
  if (counter==40){
    colorchange=orange;
  }
  if (counter==50){
    colorchange=red; 
  }
  if(counter>50){
   counter=0; 
  }
}
void tactilerectangle(int x1, int y1, int w1, int h1) {
  if (mouseX>x1 && mouseX<x1+w1 && mouseY>y1 && mouseY < y1+w1) {
    strokeWeight(4);
    stroke(darkbrown);
  } else {
    strokeWeight(5);
    stroke(black);
  }
}
void introclicks(){
  //mode game
  if (mouseX > 400 && mouseX < 600 && mouseY> 600 && mouseY < 700) {
   mode = GAME;
  }
}
