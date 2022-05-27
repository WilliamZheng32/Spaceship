class Star{
//instance variables
float x, y, vx, vy;
float size, lives;


//constructor
Star(){
 x= random(0,width);
 y= 0;
 vx=0;
 
 size=random(1,10);
 vy=size;
 lives = 1;
 }
void act(){
  x+=vx;
  y+=vy;
  if(y>height) lives=0;
}

void show(){
  fill(255);
  square(x,y,size);
  }

 }
