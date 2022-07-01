int a = int(random(3));
boolean hide = true;
int time = 0;
int click;

void setup() {
  size(480, 480);
  background(255, 255, 255);
  noStroke();
  fill(0, 0, 0);
}

void draw() {
  PFont font =createFont("DFWaWaSC-W5", 48);
  PFont font2 =createFont("STBaoliSC-Regular", 48);
  textFont(font);
  background(255, 255, 255);
  noStroke();
  fill(0, 0, 0);
  text("宝を探せ！！", 100, 50);
  squid(240, 150, (a * -1 + 1) * 255, (a * -1 + 1) * 200, 0);
  squid(150, 330, (abs(a - 1) * -1 + 1) * 255, (abs(a - 1) * -1 + 1) * 200, 0);
  squid(330, 330, (a - 1) * 255, (a - 1) * 200, 0);
  if (hide) {
    fill(0);
    rect(215, 125, 50, 50);
    rect(125, 305, 50, 50);
    rect(305, 305, 50, 50);
  } else if (millis() - time <= 3000) {
    fill(0);
    rect(215, 125, 50, 50);
    rect(125, 305, 50, 50);
    rect(305, 305, 50, 50);
    if (millis() - time <= 1000) {
      text("3", 10, 50);
    } else if (millis() - time <= 2000) {
      text("2", 10, 50);
    } else if (millis() - time <= 3000) {
      text("1", 10, 50);
    }
  } else {
    if (millis() - time >= 3000) {
      fill(255);
      rect(0, 0, 480, 100);
      fill(0);
      if (click == a) {
        textFont(font2);
        text("ゲームクリア", 100, 50);
        text("おめでとう！", 100, 100);
      } else {
        text("残念ハズレ", 125, 50);
        text("また挑戦してね", 75, 100);
      }
    }
  }
}

void mousePressed() {
  if (215 <= mouseX && mouseX < 265 && 125 <= mouseY && mouseY < 175) {
    time = millis();
    hide = false;
    click = 0;
  } else if (125 <= mouseX && mouseX < 175 && 305 <= mouseY && mouseY < 355) {
    time = millis();
    hide = false;
    click = 1;
  } else if (305 <= mouseX && mouseX < 355 && 305 <= mouseY && mouseY < 355) {
    time = millis();
    hide = false;
    click = 2;
  }
}

void squid(int x, int y, int r, int g, int b) {
  fill(r, g, b);
  quad(x, y - 18, x + 12, y - 8, x, y + 2, x - 12, y - 8);
  ellipse(x, y, 15, 22);
  fill(255, 255, 255);
  ellipse(x - 3, y - 3, 6, 9);
  ellipse(x + 3, y - 3, 6, 9);
  fill(r, g, b);
  ellipse(x - 3, y - 4, 2.5, 2.5);
  ellipse(x + 3, y - 4, 2.5, 2.5);
  ellipse(x - 6, y + 9, 3, 12);
  ellipse(x - 2, y + 9, 3, 12);
  ellipse(x + 2, y + 9, 3, 12);
  ellipse(x + 6, y + 9, 3, 12);
}
