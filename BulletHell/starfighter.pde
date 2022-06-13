class Starfighter extends GameObject {

  int cooldown, threshold, timer;

  Starfighter() {

    super(width/2, height/2, 0, 0, 40, red, 100);
    threshold = 20;
    cooldown = threshold;
    timer = 0;


    textSize(100);
    text(lives, 10, 60);
  }

  void act() {
    super.act();
    
    //managing gun
    cooldown++;
    if (space == true&&cooldown >=threshold) {
      objects.add(new Bullet());
      cooldown = 0;
    }

    //collisions
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
      i++;
    }
    
        //collisions
    int p = 0;
    while (i<objects.size()) {
      GameObject obj = objects.get(p);
      if (obj instanceof Powerups) {
        if (collidingWith(obj)) {
           lives--; 
          obj.lives = 0;
          threshold=10;
          timer=+1;
        }
        if ( timer==10) threshold = 20;
      }
      i++;
    }

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
}
