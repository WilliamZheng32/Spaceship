class Starfighter extends GameObject {

  int cooldown, threshold, timer, secondtimer;
  PImage image;

  Starfighter() {

    super(width/2, height/2, 0, 0, 100, red, 50);

    threshold = 20;
    cooldown = threshold;
    timer = 0;
    secondtimer=0;
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
      }
      if (obj instanceof SecondEnemyBullet) {
        if (collidingWith(obj)) {
          lives--; 
          obj.lives = 0;
        }
      }
      i++;
    }
    if (player.lives<=0) {
      int g = 0;
      while (g < NumberOfFrames) {
        Gif[g] = loadImage("fframe_"+g+"_delay-0.03s.gif");
        g+=1;
      }
      image(Gif[n], x, y, 200, 200);
      //println(frameCount);
      if (frameCount%2 == 0) n+=1;
      if (n == NumberOfFrames) {
        n=0;
        mode=GAMEOVER;
        //player.remove();
      }
    }

    //if (secondtimer>=100 && lives==0) mode=GAMEOVER;
    if (player.score>=50) mode = WIN;

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

    //collisions with secondpowerups
    int s = 0;
    while (s<objects.size()) {
      GameObject obj = objects.get(s);
      if (obj instanceof Secondpowerups) {
        if (collidingWith(obj)) {
          lives--; 
          obj.lives = 0;
          player.lives=player.lives+5;
        }
      }
      s++;
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
  void show() {
    image(spaceship, x, y, size, size);
  }
}
