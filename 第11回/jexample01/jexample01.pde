int scene = 1;
int x = 300;
int y = 300;
boolean apple = false;

void setup() {
  size(480, 480);
  background(255);
  stroke(255);
  noStroke();
}

void draw() {
  background(255);
  PFont Font = createFont("WeibeiSC-Bold", 30);
  textFont(Font);
  fill(0);
  if (scene == 1) {
    text("<遊びかた>", 170, 150);
    text("矢印キーで移動", 140, 200);
    text("赤丸のゴールを取ればクリア", 50, 250);
    text("Press Space key to start.", 70, 350);
  } else if (scene == 2) {
    squid(x, y);
    fill(255, 0, 0);
    circle(20, 20, 20);
    if (30 >= x && x > 10 && 40 >= y && y > 0) {
      scene = 3;
    }
  } else if (scene == 3) {
    PFont Font2 = createFont("PartyLetPlain", 150);
    textFont(Font2);
    fill(0);
    text("game clear", 50, 240);
    textFont(Font);
    text("Spaceキーで戻る", 130, 350);
  }
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

void keyPressed() {
  if (scene == 2) {
    if (keyCode == RIGHT) {
      x += 20;
    }
    if (keyCode == LEFT) {
      x += -20;
    }
    if (keyCode == UP) {
      y += -20;
    }
    if (keyCode == DOWN) {
      y += 20;
    }
  } else if (scene == 3) {
    if (key == ' ') {
      scene = 1;
    }
  } else if (scene == 1) {
    if (key == ' ') {
      scene = 2;
      x = 300;
      y = 300;
    }
  }
}
