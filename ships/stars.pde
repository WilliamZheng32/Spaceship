class Star extends GameObject{

//constructor
Star(){
  super(random(0,width),0,0,0,random(1,10),white,1);
 vy=size;
 
 }
void act(){
  super.act();
  if(y>height) lives=0;
}
  
 }
