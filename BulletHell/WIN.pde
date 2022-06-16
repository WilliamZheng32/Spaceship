void win() {
  image(spacebackground, 400, 400, 800, 800);
  fill(lightblue);
  textSize(100);
  textFont(JumpingFlash);
  text("YOU", 400, 200);
  text("WIN", 400, 400);
}
void winclicks() {
  mode = INTRO;
  reset();
}
