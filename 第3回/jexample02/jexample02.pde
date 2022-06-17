//変数を使ってスマートに点対称を描く
void setup() {
  size(480, 480);
  background(255, 255, 0);
  strokeWeight(8);
  int a = 479;

  noStroke();
  fill(0, 0, 255);
  quad(a - 102, a - 224, a - 254, a - 260, a - 226, a - 352, a - 70, a - 374);

  stroke(0, 255, 0);
  noFill();
  circle(a - 220, a - 180, 180);
  
  stroke(0, 0, 0);
  fill(255, 0, 255);
  triangle(a - 330, a - 100, a - 261, a - 220, a - 399, a - 220);
}
