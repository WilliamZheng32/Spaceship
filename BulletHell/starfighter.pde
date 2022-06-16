class Starfighter extends GameObject {

  int cooldown, threshold, timer;
  PImage image;

  Starfighter() {

    super(width/2, height/2, 0, 0, 100, red, 100);

    threshold = 20;
    cooldown = threshold;
    timer = 0;
    image(spaceship, x, y, size, size);
  }

  void act() {
    super.act();

    //spaceship restrictions
    if (x<0) x = 0;
    if (x>800) x = 800;
    if (y<0) y = 0;
    if (y>800) y = 800;

    //managing gun
    cooldown++;
    if (space == true&&cooldown >=threshold) {
      objects.add(new Bullet());
      cooldown = 0;
    }

    //collisions with enemybullet
    int i = 0;
    while (i<objects.size()) {
      GameObject obj = objects.get(i);
      if (obj instanceof EnemyBullet) {
        if (collidingWith(obj)) {
          lives--; 
          obj.lives = 0;
        }
        if (lives==0) mode=GAMEOVER;
      }
      if (obj instanceof SecondEnemyBullet) {
        if (collidingWith(obj)) {
          lives--; 
          obj.lives = 0;
        }
      }
      i++;
    }
    if (lives==0) mode=GAMEOVER;

    //collisions with powerups
    int p = 0;
    while (p<objects.size()) {
      GameObject obj = objects.get(p);
      if (obj instanceof Powerups) {
        if (collidingWith(obj)) {
          lives--; 
          obj.lives = 0;
          threshold=5;
          timer=0;
        }
      }
      p++;
    }
    if (timer<150) timer+=1;
    if ( timer==150) threshold = 20;

    //controlling the starfighter
    if (akey == true) {
      vx-=2;
    }
    if (dkey == true) {
      vx+=2;
    }
    if (skey == true) {
      vy+=2;
    }
    if (wkey == true) {
      vy-=2;
    }

    if (akey == false) {
      vx*=0.9;
    }
    if (dkey == false) {
      vx*=0.9;
    }
    if (skey == false) {
      vy*=0.9;
    }
    if (wkey == false) {
      vy*=0.9;
    }
  }
  void show() {
    image(spaceship, x, y, size, size);
  }
}
