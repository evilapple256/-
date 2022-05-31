PImage img;

int x = 240;
int y = 240;
float ay = 0;

void setup() {
  size(480, 480);

  img = loadImage("balloon.png");
}

void draw() {
  background(255, 255, 255);

  image(img, x, y, 69, 149);
  y = y - int(ay);
  ay += 0.2;
}

void mousePressed() {
  ay = 0;
  x = mouseX - 35;
  y = mouseY - 75;
}
