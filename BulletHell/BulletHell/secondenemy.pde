class SecondEnemy extends GameObject {

  int cooldown, threshold;
   PImage image;

  SecondEnemy() {
    
    super(0, random(0,600), 2, 0, 80, green, 1);

    threshold = 110;
    cooldown = threshold;
    score=0;
  }
  void act() {
    super.act();

    //managing gun
    cooldown++;
    if (cooldown >=threshold) {
      objects.add(new SecondEnemyBullet(x, y, 5, 5));
      objects.add(new SecondEnemyBullet(x, y, -5, 5));
      objects.add(new SecondEnemyBullet(x, y, 5, -5));
      objects.add(new SecondEnemyBullet(x, y, -5, -5));
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
      }
    
    //remove if goes off screen
    if (offScreen()) {
      lives = 0;
    }
  }
    void show() {
    image(secondenemyspaceship,x,y,size,size);
  }
}
