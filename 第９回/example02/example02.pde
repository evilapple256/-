void setup() {
  size(480, 480);
  background(255);
  noStroke();
  fill(0, 255, 255);
  rect(200, 300, 80, 50);
}

void draw() {
}

void mousePressed() {
  if (280 >= mouseX && mouseX >= 200 && 350 >= mouseY && mouseY >= 300) {
    fill(255, 0, 0);
    rect(200, 300, 80, 50);
  }
}
