int x = 130;
int y = 30;
int dirx = 1;
int diry = 1;
boolean div = false;

void setup() {
  size(480, 480);
  noStroke();
}

void draw() {
  background(255);
  if (x>470) {
    dirx = -1;
  }
  if (10>x) {
    dirx = 1;
  }
  if (y>465) {
    diry = -1;
  }
  if (20>y) {
    diry = 1;
  }
  if (!div) {
    if (240 >= y && y > 205) {
      diry = -1;
    }
    if (280 >= y && y > 240) {
      diry = 1;
    }
  }
  fill(0);
  rect(0, 220, 480, 40);
  squid(x, y);
  x += dirx * 3;
  y += diry * 3;
}

void squid(int x, int y) {
  if (!div) {
    quad(x, y - 18, x + 12, y - 8, x, y + 2, x - 12, y - 8);
    ellipse(x, y, 15, 22);
    fill(255, 255, 255);
    ellipse(x - 3, y - 3, 6, 9);
    ellipse(x + 3, y - 3, 6, 9);
  }
  fill(0, 0, 0);
  ellipse(x - 3, y - 4, 2.5, 2.5);
  ellipse(x + 3, y - 4, 2.5, 2.5);
  if (!div) {
    ellipse(x - 6, y + 9, 3, 12);
    ellipse(x - 2, y + 9, 3, 12);
    ellipse(x + 2, y + 9, 3, 12);
    ellipse(x + 6, y + 9, 3, 12);
  }
}

void keyPressed() {
  if (key == ' ') {
    if (div) {
      div = false;
    } else {
      div = true;
    }
  }
}
