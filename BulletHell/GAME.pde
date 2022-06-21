void game() {
  noStroke();
   image(spacebackground, 400, 400, width, height);
  //image(spacebackground, 400, 400, 800, 800);
  fill(blue, 100);
  rect(width/2, height/2, width, height);
  addObjects();
  gameEngine();
  debug();
}

void addObjects() {
  objects.add(0, new Star());

 

  if (frameCount % 35==0) objects.add(new Enemy());
  if (frameCount % 80==0) objects.add(new SecondEnemy());
  if (frameCount % 175==0) objects.add(new ThirdEnemy());
}

void gameEngine() {
  int i = 0;
  while (i<objects.size()) {
    GameObject obj = objects.get(i);
    obj.show();
    obj.act();
    if (obj.lives == 0) {
      objects.remove(i);
    } else {
      i++;
    }
  }
  player.show();
  player.act();
}
void debug() {
  textSize(10);
  text(frameRate, 20, 10);
  text(objects.size(), 20, 30);
  textSize(20);
  text("lives:", 70, 70);
  text(player.lives, 160, 70);
  text("score:", 70, 120);
  text(player.score, 160, 120);
}

void gameclicks() {
  mode = PAUSE;
}
