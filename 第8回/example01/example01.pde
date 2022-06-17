void setup() {
  size(480, 480);
  background(255, 255, 255);
  noStroke();
  fill(0, 0, 0);

  squid(20, 40);
  squid(70, 40);
  squid(120, 40);
  squid(170, 40);
  squid(220, 40);
  squid(20, 160);
  squid(70, 160);
  squid(120, 160);
  squid(170, 160);
  squid(220, 160);
}

void squid(int x, int y) {
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
