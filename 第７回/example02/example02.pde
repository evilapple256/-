int x = 20;

void setup() {
  size(480, 480);
  background(255, 255, 255);
}

void draw() {
  rect(x, x % 150 + 80, 20, 20);
  x += 50;  //x = x + 50; を意味する。
}
