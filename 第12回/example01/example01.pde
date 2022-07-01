void setup() {
  size(480, 480);
  background(255);
  PFont Font = createFont("YuKyo_Yoko-Bold", 20);
  textFont(Font);
  fill(0);
  text("0以上10未満の実数", 50, 50);
  text(0.0, 275, 50);
  text("50から100までの整数", 50, 100);
  text(50, 280, 100);
}

void draw() {
}

void mousePressed() {
  background(255);
  fill(0);
  text("0以上10未満の実数", 50, 50);
  text(random(10), 275, 50);
  text("50から100までの整数", 50, 100);
  text(int(random(51)) + 50, 280, 100);
}
