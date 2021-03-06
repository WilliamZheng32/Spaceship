void game() {
  noStroke();

  background(0);
  fill(blue,100);
  rect(width/2, height/2, width, height);
  addObjects();
  gameEngine();
  debug();
 
}

void addObjects(){
    objects.add(0,new Star());
    
    if(frameCount % 30==0) objects.add(new Enemy());
}

void gameEngine(){
   int i = 0;
  while (i<objects.size()) {
    GameObject obj = objects.get(i);
    obj.show();
    obj.act();
    if(obj.lives == 0) objects.remove(i);
    
    else{
    i++;
    }
  }
}
void debug(){
   textSize(10);
  text(frameRate,10,10);
  text(objects.size(),10,30);
}

void gameclicks() {
   mode=PAUSE;
}
