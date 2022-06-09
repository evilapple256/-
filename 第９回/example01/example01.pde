int x1 = 50;
int x2 = 75;
int x3 = 25;
int direction1 = 1;
int direction2 = 1;
int direction3 = 1;

void setup() {
  size(480, 480);
  noStroke();
}

void draw() {
  background(210);
  drawNationalFlag(x1, 100, 100);
  drawNationalFlag(x2, 250, 150);
  drawNationalFlag(x3, 400, 50);
  x1 += 1 * direction1;
  x2 += 2 * direction2;
  x3 += 3 * direction3;
  if (x1>430) {
    direction1 = -1;
  }
  if (50>x1) {
    direction1 = 1;
  }
    if (x2>405) {
    direction2 = -1;
  }
  if (75>x2) {
    direction2 = 1;
  }
    if (x3>455) {
    direction3 = -1;
  }
  if (25>x3) {
    direction3 = 1;
  }
}

//セーシェル共和国の国旗
void drawNationalFlag(float x, float y, float wid) {
  fill(209, 36, 33);
  rect((x * 2 - wid) /2, (y * 2 - wid / 3 * 2) /2, wid, wid / 3 * 2 );
  fill(252, 214, 71);
  triangle((x * 2 - wid) /2, (y * 2 - wid / 3 * 2) /2, (x * 2 - wid) /2 + wid / 3 * 2, (y * 2 - wid / 3 * 2) /2, (x * 2 - wid) /2, (y * 2 - wid / 3 * 2) /2 + wid / 3 * 2);
  fill(0, 47, 108);
  triangle((x * 2 - wid) /2, (y * 2 - wid / 3 * 2) /2, (x * 2 - wid) /2 + wid / 3, (y * 2 - wid / 3 * 2) /2, (x * 2 - wid) /2, (y * 2 - wid / 3 * 2) /2 + wid / 3 * 2);
  fill(255, 255, 255);
  triangle((x * 2 - wid) /2 + wid, (y * 2 - wid / 3 * 2) /2 + wid / 9 * 2, (x * 2 - wid) /2 + wid, (y * 2 - wid / 3 * 2) /2 + wid / 3 * 2, (x * 2 - wid) /2, (y * 2 - wid / 3 * 2) /2 + wid / 3 * 2);
  fill(0, 115, 54);
  triangle((x * 2 - wid) /2 + wid, (y * 2 - wid / 3 * 2) /2 + wid / 9 * 4, (x * 2 - wid) /2 + wid, (y * 2 - wid / 3 * 2) /2 + wid / 3 * 2, (x * 2 - wid) /2, (y * 2 - wid / 3 * 2) /2 + wid / 3 * 2);
}
