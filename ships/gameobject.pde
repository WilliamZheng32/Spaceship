abstract class GameObject {
  float x, y, vx, vy, size; 
  int lives;
  color c;

  GameObject(float x, float y, float vx, float vy, float size, color c, int lives) {
    this.x = x;
    this.y = y;
    this.vx = vx;
    this.vy = vy;
    this.size = size;
    this.c = c;
    this.lives = lives;
  }

  void act() {
    x+=vx;
    y+=vy;
  }

  void show() {
    fill(c);
    square(x, y, size);
  }
}
