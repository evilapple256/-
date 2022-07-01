float time = 0;
int n = 0;
float a = 0;

void setup() {
  size(480, 480);
  background(255);
  fill(0);
}

void draw() {
  background(255);
  PFont Font = createFont("YuKyo_Yoko-Bold", 20);
  textFont(Font);
  text((millis() - time) / 1000, 0, 20);
  text("前回クリックしてからの経過時間　　 " + a, 40, 240);
  text("10秒から経過した時間を減じた時間　" + (10 - (millis() - time) / 1000), 40, 290);
  if (n == 1) {
    n = 0;
    a = (millis() - time) / 1000;
    time = millis();
  }
}

void mousePressed() {
  n = 1;
}
