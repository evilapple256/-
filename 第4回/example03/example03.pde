int x = 315;
int y = 90;

void setup(){
  size(480, 480);
  noStroke();
  
  drawNationalFlag();
  
  x = 165;
  y = 190;
  drawNationalFlag();
  
  x = 15;
  y = 290;
  drawNationalFlag();
}

//セーシェル共和国の国旗
void drawNationalFlag(){
  fill(209, 36, 33);
  rect(x, y, 150, 100);
  fill(252, 214, 71);
  triangle(x, y, x + 100, y, x, y + 100);
  fill(0, 47, 108);
  triangle(x, y, x + 50, y, x, y + 100);
  fill(255, 255, 255);
  triangle(x + 150, y + 33, x + 150, y + 100, x, y + 100);
  fill(0, 115, 54);
  triangle(x + 150, y + 66, x + 150, y + 100, x, y + 100);
}
