int x = 20;
int y = 40;

void setup() {
  size(480, 480);
  background(255, 255, 255);
  noStroke();

  squid();
  x = 70; 
  y = 40;
  squid();
  x = 120; 
  y = 40;
  squid();
  x = 170; 
  y = 40;
  squid();
  x = 220; 
  y = 40;
  squid();
  x = 20; 
  y = 160;
  squid();
  x = 70; 
  y = 160;
  squid();
  x = 120; 
  y = 160;
  squid();
  x = 170; 
  y = 160;
  squid();
  x = 220; 
  y = 160;
  squid();
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
