void intro() {
  background(blue);
  fill(colorchange);
  textSize(countersize);
  text("BULLET", 400, 200);
  text("HELL", 400, 400);
  textSize(50);

  if (countersize>120) {
    countersize=10;
  } else {
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
  if (counter==40) {
    colorchange=orange;
  }
  if (counter==50) {
    colorchange=red;
  }
  if (counter>50) {
    counter=0;
  }
}

void introclicks() {
  //mode game
  mode = GAME;
}
