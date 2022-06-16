class Secondpowerups extends GameObject {

  Secondpowerups(float x, float y, float vx, float vy) {
    super(x, y, vx, vy, 10, purple, 1);
  }

  void show() {
    fill(c);
    circle(x, y, size);
  }
}
