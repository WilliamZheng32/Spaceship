 void mouseReleased(){
 if (mode == INTRO){
   introclicks();
 }
 else if (mode == GAME){
   gameclicks();
 }
 else if ( mode == PAUSE){
   pauseclicks();
 }
 else if (mode == GAMEOVER){
   gameoverclicks();
 } 
 else if (mode == WIN){
  winclicks(); 
 }
}
