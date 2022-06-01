void win(){
  background(pink);
  textSize(100);
  text("YOU",400,300);
  text("WON",400,400);
  
  //restart button
  fill(white);
  tactilerectangle(300,600,200,100);
  rect(300,600,200,100);
  fill(black);
  textSize(40);
  text("RESTART",400,650);
  
}
void winclicks(){
    if (mouseX > 300 && mouseX < 500 && mouseY> 600 && mouseY < 700) {
   mode = INTRO;
   reset();
  }
}
