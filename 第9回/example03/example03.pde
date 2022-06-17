int x1 = 50;
int x2 = 75;
int x3 = 25;
int y1 = 100;
int y2 = 250;
int y3 = 400;
int directionx1 = 1;
int directionx2 = 1;
int directionx3 = 1;
int directiony1 = 0;
int directiony2 = 0;
int directiony3 = 0;

void setup() {
  size(480, 480);
  noStroke();
}

void draw() {
  background(210);
  drawNationalFlag(x1, y1, 100);
  drawNationalFlag(x2, y2, 150);
  drawNationalFlag(x3, y3, 50);
  x1 += 3 * directionx1;
  x2 += 4 * directionx2;
  x3 += 5 * directionx3;
  y1 += 3 * directiony1;
  y2 += 4 * directiony2;
  y3 += 5 * directiony3;
  if (x1>430) {
    directionx1 = -1;
  }
  if (50>x1) {
    directionx1 = 1;
  }
  if (y1>446.7) {
    directiony1 = -1;
  }
  if (33>y1) {
    directiony1 = 1;
  }
  if (x2>405) {
    directionx2 = -1;
  }
  if (75>x2) {
    directionx2 = 1;
  }
  if (y2>430) {
    directiony2 = -1;
  }
  if (50>y2) {
    directiony2 = 1;
  }
  if (x3>455) {
    directionx3 = -1;
  }
  if (25>x3) {
    directionx3 = 1;
  }
  if (y3>463.4) {
    directiony3 = -1;
  }
  if (16.6>y3) {
    directiony3 = 1;
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      directionx1 = 0;
      directionx2 = 0;
      directionx3 = 0;
      directiony1 = -1;
      directiony2 = -1;
      directiony3 = -1;
    } else if (keyCode == DOWN) {
      directionx1 = 0;
      directionx2 = 0;
      directionx3 = 0;
      directiony1 = 1;
      directiony2 = 1;
      directiony3 = 1;
    } else if (keyCode == LEFT) {
      directionx1 = -1;
      directionx2 = -1;
      directionx3 = -1;
      directiony1 = 0;
      directiony2 = 0;
      directiony3 = 0;
    } else if (keyCode == RIGHT) {
      directionx1 = 1;
      directionx2 = 1;
      directionx3 = 1;
      directiony1 = 0;
      directiony2 = 0;
      directiony3 = 0;
    }
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
