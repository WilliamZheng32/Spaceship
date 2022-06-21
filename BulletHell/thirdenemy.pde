class ThirdEnemy extends GameObject {

  int cooldown, threshold;
  PImage image;

  ThirdEnemy() {

    super(800, 0, -1, 1, 100, purple, 2);

    threshold = 120;
    cooldown = threshold;
    score=0;
  }
  void act() {
    super.act();

    //mangaing gun
    cooldown++;
    if (cooldown >=threshold) {
      objects.add(new SecondEnemyBullet(x, y, 5, 5));
      objects.add(new SecondEnemyBullet(x, y, -5, 5));
      objects.add(new SecondEnemyBullet(x, y, 5, -5));
      objects.add(new SecondEnemyBullet(x, y, -5, -5));
      objects.add(new SecondEnemyBullet(x, y, 0, 5));
      cooldown = 0;
    }

    //collisions with bullets
    int i = 0;
    while (i<objects.size()) {
      GameObject obj = objects.get(i);
      if (obj instanceof Bullet) {
        if (collidingWith(obj)) {
          lives--; 
          obj.lives = 0;
        }
      }
      i++;
    }

    if (lives == 0) {
      //explosion
      objects.add(new Explosion(x, y, 0, 10));
      objects.add(new Explosion(x, y, 10, 10));
      objects.add(new Explosion(x, y, 0, -10));
      objects.add(new Explosion(x, y, -10, 10));
      objects.add(new Explosion(x, y, 10, 0));
      objects.add(new Explosion(x, y, -10, 0));

      objects.add(new Powerups(x, y, 0, 0));
      player.score+=2;
    }

    //remove if goes off screen
    if (offScreen()) {
      lives = 0;
    }
  }
  void show() {
    image(thirdenemy, x, y, size, size);
  }
}
