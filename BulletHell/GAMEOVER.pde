void gameover() {
  background(black);
  textSize(150);
  fill(red);
  text("GAME", 400, 200);
  text("OVER", 400, 400);
}

void gameoverclicks() {
  mode = INTRO;
  reset();
}
