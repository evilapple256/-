float x = 5000;
float y = 5000;
float a = 0;

void setup() {
  size(480, 480);
  background(255, 255, 255);
  fill (255, 0, 0);
  noStroke();
}

void draw() {
  circle(x, y, 20);
  a += 2;
  y = y + a;
}

void mousePressed() {
  a = 0;
  x = mouseX;
  y = mouseY;
}
