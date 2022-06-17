int x = 0;
int y = 200;
boolean flag = false;

void setup() {
  size(480, 480);
}

void draw() {
  background(255, 255, 255);

  noStroke();
  if (flag) {
    fill(255, 0, 0);
  } else {
    fill(0, 255, 255);
  }
  rect(200, 300, 80, 50);
  if (flag) {
    x = x + 6;
  } else {
    x = x + 3;
  }
  x = x % 480;
  noStroke();
  fill(0, 0, 255);
  circle(x, y, 50);
}

void mousePressed() {
  if (200 <= mouseX && mouseX < 280 && 300 <= mouseY && mouseY < 350) {
    if (flag) {
      flag = false;
    } else {
      flag = true;
    }
  }
}
