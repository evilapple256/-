int a = 0;
void setup() {
  size(480, 480);
  background(255, 255, 255);
  frameRate(2);
  noStroke();
  fill(0, 0, 255);
}

void draw() {
  background(255, 255, 255);
  ellipse(a % 4 * (-120) + 420, 240, 60, 60);
  a ++;
}
