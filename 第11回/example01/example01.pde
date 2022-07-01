int x = 240;
int y = 240;
int x1 = -50;
int y1 = -50;
int x2 = -50;
int y2 = -50;
int x3 = -50;
int y3 = -50;
int col1 = 0;
int col2 = 0;
int col3 = 0;

void setup() {
  size(480, 480);
  background(255, 255, 255);
  noStroke();
}

void draw() {
  background(255, 255, 255);
  x = x3;
  y = y3;
  squid(x, y, col3, col3, col3);
  x = x2;
  y = y2;
  squid(x, y, col2, col2, col2);
  x = x1;
  y = y1;
  squid(x, y, col1, col1, col1);
  x = mouseX;
  y = mouseY;
  squid(x, y, 0, 0, 0);
  col1 += 3;
  col2 += 3;
  col3 += 3;
}

void mousePressed() {
  x3 = x2;
  y3 = y2;
  x2 = x1;
  y2 = y1;
  x1 = mouseX;
  y1 = mouseY;
  col3 = col2;
  col2 = col1;
  col1 = 0;
}

void squid(int x, int y, int R, int G, int B) {
  fill(R, G, B);
  quad(x, y - 18, x + 12, y - 8, x, y + 2, x - 12, y - 8);
  ellipse(x, y, 15, 22);
  fill(255, 255, 255);
  ellipse(x - 3, y - 3, 6, 9);
  ellipse(x + 3, y - 3, 6, 9);
  fill(R, G, B);
  ellipse(x - 3, y - 4, 2.5, 2.5);
  ellipse(x + 3, y - 4, 2.5, 2.5);
  ellipse(x - 6, y + 9, 3, 12);
  ellipse(x - 2, y + 9, 3, 12);
  ellipse(x + 2, y + 9, 3, 12);
  ellipse(x + 6, y + 9, 3, 12);
}
