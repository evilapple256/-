int scene = 1;
int x = 240;
int y = 300;
int ax = 0;
int ay = 0;

void setup() {
  size(480, 480);
  background(0);
  stroke(255);
  noFill();
}

void draw() {
  background(0);
  if (scene == 1) {
    strokeWeight(1);
    PFont font1 = createFont("Meiryo", 25);
    textFont(font1);
    fill(255);
    text("ああああ　　LV1　　000:00", 75, 175);
    text("いせき", 200, 205);
    if (50 <= mouseX && mouseX < 230 && 240 <= mouseY && mouseY < 270) {
      stroke(255, 255, 0);
      fill(255, 255, 0);
    } else {
      stroke(255);
      fill(255);
    }
    noFill();
    rect(50, 240, 180, 30);
    text("コンティニュー", 52, 265);
    if (250 <= mouseX && mouseX < 430 && 240 <= mouseY && mouseY < 270) {
      stroke(255, 255, 0);
      fill(255, 255, 0);
    } else {
      stroke(255);
      fill(255);
    }
    noFill();
    rect(250, 240, 180, 30);
    text("本当のリセット", 255, 265);
    noStroke();
    fill(58, 55, 72);
    rect(90, 350, 300, 80, 40);
    fill(95, 91, 118);
    rect(130, 350, 220, 80, 40);
    fill(200, 188, 224);
    ellipse(240, 390, 140, 80);
    fill(44, 197, 78);
    ellipse(240, 370, 80, 40);
    fill(67, 20, 64);
    rect(170, 40, 140, 90);
    fill(0);
    rect(200, 40, 80, 80);
  } else if (scene == 2) {
    x += ax;
    y += ay;
    if (330 <= x || x < 150 || 390 <= y || y < 210) {
      x = 240;
      y = 300;
    }
    strokeWeight(5);
    stroke(255);
    noFill();
    rect(140, 200, 200, 200);
    noStroke();
    fill(255, 0, 0);
    circle(x, y, 20);
  } else if (scene == 3) {
    PFont font1 = createFont("Meiryo", 25);
    textFont(font1);
    text("まだ諦めるには", 150, 345);
    text("スペースキーでタイトルへ", 100, 470);
    PFont font2 = createFont("Skia-Regular_Black", 100);
    textFont(font2);
    fill(255);
    text("GAME", 90, 175);
    text("OVER", 90, 255);
  }
}

void mousePressed() {
  if (scene == 1 && 250 <= mouseX && mouseX < 430 && 240 <= mouseY && mouseY < 270) {
    fill(255, 0, 0);
    background(0);
    PFont font1 = createFont("Meiryo", 12);
    textFont(font1);
    text("JUU HACHI BAN", 20, 300);
    text("PIKA PIKA SARANI MABUSHIKU", 20, 310);
    text("IRO NO NOUDO HA TAKAMATTE", 20, 320);
    text("HIKARI HA SHIDAINI TSUYOKUSHIMIRU", 20, 330);
    text("MANA NO SUUCHI HA HU NO SUJI", 20, 340);
    text("TUGINO JIKKEN", 20, 350);
    text("AH...", 20, 360);
    text("HONTOUNI", 20, 370);
    text("HONTOUNI", 20, 380);
    text("OMOSHIROI", 20, 390);
    text(",,,", 20, 400);
    text("KIMI HA DOUKANA?", 20, 410);
    exit();
  }
  if (scene == 1 && 50 <= mouseX && mouseX < 230 && 240 <= mouseY && mouseY < 270) {
    scene = 2;
  }
}

void keyPressed() {
  if (scene == 2) {
    if (keyCode == RIGHT) {
      ax = 2;
    }
    if (keyCode == LEFT) {
      ax = -2;
    }
    if (keyCode == UP) {
      ay = -2;
    }
    if (keyCode == DOWN) {
      ay = 2;
    }
    if (key == ' ') {
      x = 240;
      y = 300;
      scene = 3;
    }
  } else if (scene == 3) {
    if (key == ' ') {
      scene = 1;
    }
  }
}

void keyReleased() {
  if (keyCode == RIGHT) {
    ax = 0;
  }
  if (keyCode == LEFT) {
    ax = 0;
  }
  if (keyCode == UP) {
    ay = 0;
  }
  if (keyCode == DOWN) {
    ay = 0;
  }
}
