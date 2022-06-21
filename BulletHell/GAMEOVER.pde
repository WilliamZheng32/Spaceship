void gameover() {
  image(gameoverbackground, 400, 400, width, height);
  textSize(100);
  fill(red);
  textFont(JumpingFlash);
  text("GAME", 400, 200);
  text("OVER", 400, 400);
}

void gameoverclicks() {
  mode = INTRO;
  reset();
}
