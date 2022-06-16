void intro() {
  int g = 0;
  while (g < numberofframes) {
    gif[g] = loadImage("frame_"+g+"_delay-0.03s.gif");
    g+=1;
  }
  image(gif[f], 400, 400, 800, 800);
  println(frameCount);
  if (frameCount%2 == 0) f+=1;
  if (f == numberofframes) {
    f=0;
  }

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
