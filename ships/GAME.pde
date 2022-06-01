void game() {
  objects.add(0,new Star());
  background(0);
  
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
  textSize(10);
  text(frameRate,10,10);
  text(objects.size(),10,30);

  if (akey == true) {
    sx-=5;
  }
  if (dkey == true) {
    sx+=5;
  }
  if (skey == true) {
    sy+=5;
  }
  if (wkey == true) {
    sy-=5;
  }
}

void gameclicks() {
   mode=PAUSE;
}
