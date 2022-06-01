class Bullet extends GameObject{
 
  Bullet(){
    super(player.x, player.y,0,-10,5,red,1);
 
  }
  void act(){
   super.act();
   if(x<0||x>width||y<0||y>height) lives=0;
}
}
