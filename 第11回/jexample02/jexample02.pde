int area = 10;
boolean key1 = false;
boolean door = false;
int tex = 0;

void setup() {
  size(480, 480);
}
void draw() {
  PFont font1 = createFont("Meiryo", 25);
  textFont(font1);
  background(255);
  fill(255);
  rect(100, -10, 280, 300);
  fill(227, 196, 112);
  quad(100, 270, 380, 270, 530, 430, -50, 430);
  if (area == 10) {
    fill(165, 109, 37);
    ellipse(390, 470, 140, 160);
    fill(255);
    rect(-50, 430, 1000, 60);
    if (door) {
      fill(0);
      rect(120, 80, 140, 190);
      fill(165, 109, 37);
      quad(120, 80, 120, 270, 60, 330, 60, 140);
      fill(255, 255, 0);
      ellipse(70, 220, 10, 20);
    } else {
      fill(165, 109, 37);
      rect(120, 80, 140, 190);
      fill(255, 255, 0);
      circle(240, 180, 20);
      fill(200);
      circle(240, 200, 10);
    }
  }
  if (area == 20) {
    fill(165, 109, 37);
    rect(240, 330, 20, 60);
    rect(340, 330, 20, 60);
    ellipse(300, 310, 190, 110);
  }
  if (!key1 && area == 20) {
    fill(200);
    quad(290, 300, 300, 315, 300, 300, 290, 315);
    rect(290, 299, 40, 7.5);
    rect(315, 292, 20, 20);
  }
  if (area == 20) {
    fill(255, 0, 0);
    triangle(20, 230, 20, 250, 10, 240);
  }
  if (area == 10) {
    fill(255, 0, 0);
    triangle(460, 230, 460, 250, 470, 240);
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
  if (tex == 5) {
    fill(0);
    text("右を向いた", 10, 470);
  }
  if (tex == 6) {
    fill(0);
    text("左を向いた", 10, 470);
  }
}

void mousePressed() {
  if (area == 10) {
    if (120 <= mouseX && mouseX < 260 && 80 <= mouseY && mouseY <270) {
      if (key1) {
        door = true;
        tex = 2;
      } else {
        tex = 1;
      }
    } else {
      tex = 4;
    }
    if (440 <= mouseX) {
      tex = 5;
      area = 20;
    }
  } else if (area == 20) {
    if (290 <= mouseX && mouseX < 335 && 292 <= mouseY && mouseY <317 && !key1) {
      key1 = true;
      tex = 3;
    } else {
      tex = 4;
    }
    if (mouseX < 40) {
      tex = 6;
      area = 10;
    }
  }
}
