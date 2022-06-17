int area = 10;
boolean key1 = false;
int tex = 0;

void setup() {
  size(480, 480);
}
void draw() {
  PFont font1 = createFont("Meiryo", 25);
  textFont(font1);
  if (area == 10) {
    background(255);
    fill(255);
    rect(100, -10, 280, 300);
    fill(227, 196, 112);
    quad(100, 270, 380, 270, 530, 430, -50, 430);
    fill(165, 109, 37);
    rect(240, 330, 20, 60);
    rect(340, 330, 20, 60);
    rect(120, 80, 140, 190);
    ellipse(300, 310, 190, 110);
    fill(255, 255, 0);
    circle(240, 180, 20);
    fill(200);
    circle(240, 200, 10);
  }
  if (area == 11) {
    background(255);
    fill(255);
    rect(100, -10, 280, 300);
    fill(227, 196, 112);
    quad(100, 270, 380, 270, 530, 430, -50, 430);
    fill(0);
    rect(120, 80, 140, 190);
    fill(165, 109, 37);
    rect(240, 330, 20, 60);
    rect(340, 330, 20, 60);
    quad(120, 80, 120, 270, 60, 330, 60, 140);
    ellipse(300, 310, 190, 110);
    fill(255, 255, 0);
    ellipse(70, 220, 10, 20);
  }
  if (!key1) {
    fill(200);
    quad(290, 300, 300, 315, 300, 300, 290, 315);
    rect(290, 299, 40, 7.5);
    rect(315, 292, 20, 20);
  }
  if (tex == 1) {
    fill(0);
    text("鍵が掛かっている", 10, 470);
  }
  if (tex == 2) {
    fill(0);
    text("ドアが開いた", 10, 470);
  }
  if (tex == 3) {
    fill(0);
    text("鍵を手に入れた", 10, 470);
  }
  if (tex == 4) {
    fill(0);
    text("特に何もないようだ", 10, 470);
  }
}

void mousePressed() {
  if (290 <= mouseX && mouseX < 335 && 292 <= mouseY && mouseY <317 && !key1) {
    key1 = true;
    tex = 3;
  } else if (120 <= mouseX && mouseX < 260 && 80 <= mouseY && mouseY <270) {
    if (key1) {
      area = 11;
      tex = 2;
    } else {
      tex = 1;
    }
  } else {
    tex = 4;
  }
}
