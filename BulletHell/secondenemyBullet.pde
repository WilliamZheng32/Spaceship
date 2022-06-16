class SecondEnemyBullet extends GameObject {

  SecondEnemyBullet(float x, float y, float vx, float vy) {
    super(x, y, vx, vy, 20, green, 1);
  }
  void act() {
    super.act();
    if (offScreen()) lives=0;
  }
}
