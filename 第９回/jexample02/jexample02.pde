int n = 0;
size(480, 480);
background(255);
textSize(50);
for (int hor = 0; hor < 10; hor++) {
  for (int ver = 0; ver < 6; ver++) {
    n ++;
    fill(255);
    rect(ver * 80, hor * 50, 80, 50);
    if (n == 1) {
      fill(0);
    } else if (n == 2||n == 3||n == 5||n == 7) {
      fill(253, 126, 0);
    } else if (n % 2 == 0||n % 3 == 0||n % 5 == 0||n % 7 == 0) {
      fill(0, 255, 0);
    } else {
      fill(255, 0, 0);
    }
    text(n, ver * 80, hor * 50 + 50);
  }
}
