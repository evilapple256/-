import processing.sound.*;

SoundFile sound;
PImage imgHuman;
PImage imgMask;
PImage imgVirus;

int x = 1000;
int y = 0;
int virus = 0;

void setup() {
  size(480, 480);

  imgHuman = loadImage("human.png");
  imgMask = loadImage("mask.png");
  imgVirus = loadImage("virus.png");
  sound = new SoundFile(this, "button05.mp3");
}

void draw() {
  background(255, 255, 255);
  image(imgHuman, (width - imgHuman.width) / 2, (height - imgHuman.height) / 2, imgHuman.width, imgHuman.height);
  image(imgMask, x, y, 140, 70);
  image(imgMask, mouseX - 70, mouseY - 35, 140, 70);
  if (virus < 1)image(imgVirus, 0, 0, imgVirus.width / 4, imgVirus.height / 4);
}

void mousePressed() {
  sound.play();
  x = mouseX - 70;
  y = mouseY - 35;
  virus = 1;
}
