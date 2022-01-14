float x, y, speedX, speedY;
float diam = 200;
float rectSize = 500;
PImage bot;

import processing.sound.*;

SoundFile file;
String audioName = "Circus Music.mp3";
String path;
void setup() {
  fullScreen();
  bot = loadImage("mustache.jpeg");
  imageMode(CENTER);
  path = sketchPath(audioName);
file = new SoundFile(this, "Circus Music.mp3");
file.play();

 reset();
}

void reset() {
  x = width/2;
  y = height/2;
  speedX = random(3, 5);
  speedY = random(3, 5);
}

void draw() { 
  background(0);
image (bot, x, y, diam, diam);
 PImage bot;
 
  fill(random(255),random(255),random(255));
  line(0,0,width,height);
  rect(0, 0, 20, height);
  rect(width-30, mouseY-rectSize/2, 10, rectSize);
noFill();

  x += speedX;
  y += speedY;


  if ( x > width-30 && x < width -20 && y > mouseY-rectSize/2 && y < mouseY+rectSize/2 ) {
    speedX = speedX * -1;
  } 

  
  if (x < 25) {
    speedX *= -1.1;
    speedY *= 1.1;
    x += speedX;
  }

  
  if ( y > height || y < 0 ) {
    speedY *= -1;
  }
}

void mousePressed() {
  reset();
}
