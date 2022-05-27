int x = 120;
int y = 120;

void lion() {  
  fill(155, 100, 70);
  stroke(155, 100, 70);
  rect(x - 80, y - 80, 160, 160);
  triangle(x, y - 113.14, x - 113.14, y, x + 113.14, y);
  triangle(x, y + 113.14, x - 113.14, y, x + 113.14, y);
  fill(250, 220, 120);
  circle(x - 60, y - 50, 50);
  circle(x + 60, y - 50, 50);
  circle(x, y + 10, 150);
  fill(0, 0, 0);
  circle(x - 30, y + 20, 20);
  circle(x + 30, y + 20, 20);
  fill(255, 250, 240);
  ellipse(x, y + 55, 70, 60);
  fill(0, 0, 0);
  ellipse(x, y + 30, 15, 10);
}

void setup() {
  size(480, 480);
}

void draw() {
  background(255, 255, 255);
  lion();
  x = x + 1;
}
