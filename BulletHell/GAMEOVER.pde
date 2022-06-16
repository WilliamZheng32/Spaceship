void gameover() {
  image(gameoverbackground, 400, 400, 800, 800);
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
