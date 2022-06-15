class Bullet extends GameObject {

  Bullet() {
    super(player.x, player.y, 0, -10, 10, red, 1);
  }
  void act() {
    super.act();
    if (offScreen()) lives=0;
  }
}
