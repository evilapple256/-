int count = 0;

void setup() {
  size(480, 480);
  background(255, 255, 255);
  fill(0);
}

void draw() {
  background(0);
  fill(255);
  PFont Font = createFont("MshtakanBold", 60);
  textFont(Font);
  text("ク", 0, 140);
  text("リ", 0, 210);
  text("ッ", 0, 270);
  text("ク", 0, 340);
  text("を", 0, 410);
  PFont Font2 = createFont("MshtakanBold", 60);
  textFont(Font2);
  text(count + "回行いました。", 0, 475);
  fill(255, 0, 0);
  text(count, 0, 475);
}

void mousePressed() {
  count ++;
}
