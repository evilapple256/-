int count = 0;
int sum = 0;
void setup() {
  size(480, 480);
  background(255, 255);
}

void draw() {
}

void mousePressed() {
  count ++;
  sum = sum + mouseY;
  println(count);
  println(mouseY);
  println(sum);
  println(float(sum) / float(count));
  println();
}
