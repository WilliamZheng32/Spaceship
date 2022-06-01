class Starfighter extends GameObject{
  
  int cooldown, threshold;
  
  Starfighter(){
     super(width/2, height/2,0,0,40,red,3);
     threshold = 60;
     cooldown = threshold;
  }
  
  void act(){
  super.act();
  //managing gun
  cooldown++;
  if(space == true&&cooldown >=threshold){
    objects.add(new Bullet());
    cooldown = 0;
  }
  //controlling the starfighter
  if (akey == true) {
    vx-=3;
  }
  if (dkey == true) {
    vx+=3;
  }
  if (skey == true) {
    vy+=3;
  }
  if (wkey == true) {
    vy-=3;
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
