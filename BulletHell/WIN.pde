void win() {
  image(spacebackground, 400, 400, width, height);
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
