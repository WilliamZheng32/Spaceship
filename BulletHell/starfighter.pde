class Starfighter extends GameObject {

  int cooldown, threshold;

  Starfighter() {

    super(width/2, height/2, 0, 0, 40, red, 100);
    threshold = 20;
    cooldown = threshold;

    vx=max(vx, 40);
    vx=min(vx, 760);
    vy=max(vy, 40);
    vy=min(vy, 760);

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
