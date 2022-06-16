class Enemy extends GameObject {

  int cooldown, threshold;


  Enemy() {
    super(random(width), -20, 0, 5, 40, yellow, 1);     
    threshold = 60;
    cooldown = threshold;
    score=0;
  }

  void act() {
    super.act();

    //managing gun
    cooldown++;
    if (cooldown >= threshold) {
      objects.add(new EnemyBullet(x, y, 0, 10));
      cooldown = 0;
    }

    //collisions
    int i = 0;
    while (i<objects.size()) {
      GameObject obj = objects.get(i);
      if (obj instanceof Bullet) {
        if (collidingWith(obj)) {
          lives--; 
          obj.lives = 0;
          score+=1;
        }
        if (lives == 0) {
          //explosion
          objects.add(new Explosion(x, y, 0, 10));
          objects.add(new Explosion(x, y, 10, 10));
          objects.add(new Explosion(x, y, 0, -10));
          objects.add(new Explosion(x, y, -10, 10));
          objects.add(new Explosion(x, y, 10, 0));
          objects.add(new Explosion(x, y, -10, 0));
        }
      }
      i++;
    }
    //remove if goes off screen
    if (offScreen()) {
      lives = 0;
    }
  }
  void show() {
    image(enemyspaceship, x, y, size, size);
  }
}
