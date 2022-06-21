//colours
color red = #FF0000;
color yellow = #FFFF00;
color blue = #0000FF;
color purple = #4b0082;
color black  = #000000;
color white  = #FFFFFF;
color green  = #008000;
color orange = #ffa500;
color lightblue = #ADD8E6;
color grey   = #808080;
color brown = #964B00;
color darkbrown = #5C4033;
color pink = #FF1493;

PImage[] gif;
PImage[] Gif;
int n;
int f;
int NumberOfFrames;
int numberofframes;
PFont JumpingFlash;

//mode
int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;
final int WIN = 5;

ArrayList<GameObject> objects;
Starfighter player;
float sx, sy, sd;
boolean akey, dkey, skey, wkey, space;
int colorchange, countersize, counter;

PImage spaceship;
PImage enemyspaceship;
PImage secondenemyspaceship;
PImage spacebackground;
PImage gameoverbackground;
PImage thirdenemy;


void setup() {
  size(800, 800);
  mode=INTRO;
  rectMode(CENTER);
  imageMode(CENTER);
  textAlign(CENTER, CENTER);
  countersize=10;
  counter=0;
  colorchange=black;

  JumpingFlash = createFont("Jumping Flash.ttf", 100);

  numberofframes = 36;
  gif = new PImage[numberofframes];
  NumberOfFrames = 24;
  Gif = new PImage[NumberOfFrames];

  spaceship = loadImage("spaceship.png");
  enemyspaceship = loadImage("enemyspaceship.png");
  secondenemyspaceship = loadImage("secondenemyspaceship.jpg");
  spacebackground = loadImage("spacebackground.jpg");
  gameoverbackground = loadImage("gameoverbackground.jpg");
  thirdenemy = loadImage("thirdenemy.png");

  objects = new ArrayList<GameObject>();
 player = new Starfighter();
 
  reset();
}
void draw() {

  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if ( mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == WIN) {
    win();
  } else {
    println("mode error: " + mode);
  }
}
