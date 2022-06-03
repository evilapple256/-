int x1 = 0;
int x2 = 0;
int x3 = 0;

void setup() {
  size(480, 480);
  noStroke();
}

void draw() {
  background(210);
  drawNationalFlag(x1 % 580 - 50, 100, 100);
  drawNationalFlag(x2 % 630 - 75, 250, 150);
  drawNationalFlag(x3 % 530 - 25, 400, 50);
  x1 += 1;
  x2 += 2;
  x3 += 3;
}

//セーシェル共和国の国旗
void drawNationalFlag(float x, float y, float wid) {
  fill(209, 36, 33);
  rect((x * 2 - wid) /2, (y * 2 - wid) /2, wid, wid / 3 * 2 );
  fill(252, 214, 71);
  triangle((x * 2 - wid) /2, (y * 2 - wid) /2, (x * 2 - wid) /2 + wid / 3 * 2, (y * 2 - wid) /2, (x * 2 - wid) /2, (y * 2 - wid) /2 + wid / 3 * 2);
  fill(0, 47, 108);
  triangle((x * 2 - wid) /2, (y * 2 - wid) /2, (x * 2 - wid) /2 + wid / 3, (y * 2 - wid) /2, (x * 2 - wid) /2, (y * 2 - wid) /2 + wid / 3 * 2);
  fill(255, 255, 255);
  triangle((x * 2 - wid) /2 + wid, (y * 2 - wid) /2 + wid / 9 * 2, (x * 2 - wid) /2 + wid, (y * 2 - wid) /2 + wid / 3 * 2, (x * 2 - wid) /2, (y * 2 - wid) /2 + wid / 3 * 2);
  fill(0, 115, 54);
  triangle((x * 2 - wid) /2 + wid, (y * 2 - wid) /2 + wid / 9 * 4, (x * 2 - wid) /2 + wid, (y * 2 - wid) /2 + wid / 3 * 2, (x * 2 - wid) /2, (y * 2 - wid) /2 + wid / 3 * 2);
}
