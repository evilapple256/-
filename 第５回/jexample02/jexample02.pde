int x = 240;
int y = 240;
int A = 1;
int a = -50;
int b = -50;
int c = -50;
int d = -50;
int e = -50;
int f = -50;

void setup() {
  size(480, 480);
  background(255, 255, 255);
  noStroke();
}

void draw() {
  background(255, 255, 255);
  x = a;
  y = b;
  squid();
  x = c;
  y = d;
  squid();
  x = e;
  y = f;
  squid();
  x = mouseX;
  y = mouseY;
  squid();
}

void mousePressed() {
  if (A == 1) {
    a = mouseX;
    b = mouseY;
  }
  if (A == 2) {
    c = mouseX;
    d = mouseY;
  }
  if (A == 3) {
    e = mouseX;
    f = mouseY;
    A = 0;
  }
  A = A + 1;
}

void squid() {
  fill(0, 0, 0);
  quad(x, y - 18, x + 12, y - 8, x, y + 2, x - 12, y - 8);
  ellipse(x, y, 15, 22);
  fill(255, 255, 255);
  ellipse(x - 3, y - 3, 6, 9);
  ellipse(x + 3, y - 3, 6, 9);
  fill(0, 0, 0);
  ellipse(x - 3, y - 4, 2.5, 2.5);
  ellipse(x + 3, y - 4, 2.5, 2.5);
  ellipse(x - 6, y + 9, 3, 12);
  ellipse(x - 2, y + 9, 3, 12);
  ellipse(x + 2, y + 9, 3, 12);
  ellipse(x + 6, y + 9, 3, 12);
}
