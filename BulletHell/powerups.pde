class Powerups extends GameObject {

  Powerups(float x, float y, float vx, float vy) {
    super(x, y, vx, vy, 10, lightblue, 1);
  }

  void show() {
    fill(c);
    circle(x, y, size);
  }
}
