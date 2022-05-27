void game() {
  stars.add(new Star());
  background(0);
  int i = 0;
  while (i<stars.size()) {
    Star s = stars.get(i);
    s.show();
    s.act();
    if(s.lives == 0) stars.remove(i);
    
    else{
    i++;
    }
  }
  
  text(frameRate,10,10);
  text(stars.size(),10,30);

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
}
