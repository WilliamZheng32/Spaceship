void keyPressed() {
  if (key == 'a' || key == 'A') {
    akey=true;
  }
  if (key == 'd' || key == 'D') {
    dkey=true;
  }
  if (key == 'w' || key == 'W') {
    wkey=true;
  }  
  if (key == 's' || key == 'S') {
    skey=true;
  }
  if (key == ' ') space = true;
}

void keyReleased() {
  if ( key == 'a' || key == 'A') {
    akey=false;
  }
  if ( key == 'd' || key == 'D') {
    dkey=false;
  }
  if ( key == 'w' || key == 'W') {
    wkey=false;
  }
  if ( key == 's' || key == 'S') {
    skey=false;
  }
  if (key == ' ') space = false;
}
