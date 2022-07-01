float x = random(440);
float y = random(440);
int score = 0;
int scene = 0;

void setup () {
  size(480, 480);
  noStroke();
}

void draw () {
  background(255);
  fill(0);
  PFont font = createFont("STXingkaiTC-Light", 50);
  textFont(font);
  if (scene == 0) {
    fill(random(256), random(256), random(256));
    text("烏賊", 85, 150);
    fill(0);
    text("　　討伐遊戯", 85, 150);
    text("クリックで討伐", 65, 250);
    text("10体討伐で討伐終了", 25, 300);
    text("スペースキーで開始", 15, 400);
  } else if (scene == 1) {
    text(score, 10, 50); 
    squid(x + 20, y + 20, random(256), random(256), random(256));
  } else if (scene == 2) {
    fill(random(256), random(256), random(256));
    text("烏賊", 85, 200);
    fill(0);
    text("　　討伐遊戯", 85, 200);
    text("討伐終了!!", 115, 250);
    text("スペースキーで戻る", 15, 350);
  }
}

void mousePressed() {
  if (x - 9.5 + 20 <= mouseX && mouseX < x + 9.5 + 20 && y - 18 + 20 <= mouseY && mouseY < y + 15 + 20) {
    score ++;
    x = random(440);
    y = random(440);
  }
  if (score == 10) {
    scene = 2;
  }
}

void keyPressed() {
  if (scene == 0) {
    if (key == ' ') {
      score = 0;
      scene = 1;
    }
  } else if (scene == 1) {
  } else if (scene == 2) {
    if (key == ' ') {
      scene = 0;
    }
  }
}

void squid(float x, float y, float r, float g, float b) {
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
