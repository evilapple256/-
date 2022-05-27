int a = 0;

void setup() {
  size(480, 480);
  background(255, 255, 255);
  fill(0, 0, 0);
}

void draw() {
  text(a, a % 5 * 50 + 140, a / 5 * 50 + 40);
  a ++;
}
