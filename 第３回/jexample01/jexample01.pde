void setup() {
  size(720, 480);
  background(255, 255, 255);
  line(240, 0, 240, 480);
  line(480, 0, 480, 480);
  line(0, 240, 720, 240);
  int x, y;

  // ①NE22-1117B 古賀巧実
  x = 120;
  y = 120;
  fill(155, 100, 70);
  stroke(155, 100, 70);
  rect(x - 80, y - 80, 160, 160);
  triangle(x, y - 113.14, x - 113.14, y, x + 113.14, y);
  triangle(x, y + 113.14, x - 113.14, y, x + 113.14, y);
  fill(250, 220, 120);
  circle(x - 60, y - 50, 50);
  circle(x + 60, y - 50, 50);
  circle(x, y + 10, 150);
  fill(0, 0, 0);
  circle(x - 30, y + 20, 20);
  circle(x + 30, y + 20, 20);
  fill(255, 250, 240);
  ellipse(x, y + 55, 70, 60);
  fill(0, 0, 0);
  ellipse(x, y + 30, 15, 10);
  
  text("NE22-1117B", 80, 230);
  text("LION", 80, 240);

  // ②NE22-1127H 後藤蓮太郎
  x = 520;
  y = 270;

  fill(255);
  noStroke();
  
  //右上
  fill(255, 255, 0); 
  ellipse(x-160,y-220,20,30);
  
  fill(255, 255, 0); 
  ellipse(x-160,y-150,120,140);
 
  fill(0,100); 
  circle(x-170,y-150,20);
  circle(x-150,y-150,20);
  
  fill(255,255,255); 
  ellipse(x-160,y-130,30,50);
  
  fill(0,200);
  circle(x-180,y-170,10);
  circle(x-140,y-170,10);
  
  text("NE22-1127H", 320, 230);
  text("TORI", 320, 240);


  // ③NE22-1137D 浦田佳亮
  x = 480;
  y = 0;

  noStroke();
  
  fill(200);
  ellipse(x+45, y+100, 65, 75); //hidarimimi
  
   fill(245);
  ellipse(x+45, y+100, 35, 50); //hidarimiminaka
  
   fill(200);
  ellipse(x+195, y+100, 65, 75); //migimimi
  
   fill(245);
  ellipse(x+195, y+100, 35, 50); //migimiminaka
  
   fill(200);
  ellipse(x+120, y+130, 150, 135); //kao
  
  fill(25);
  ellipse(x+85, y+140, 25, 25); //hidarime
  
  fill(255);
  ellipse(x+80, y+135, 10, 10); //hidarimenaka
  
  fill(25);
  ellipse(x+155, y+140, 25, 25); //migime
 
  fill(255);
  ellipse(x+150, y+135, 10, 10); //migimenaka
  
  fill(25);
  ellipse(x+120, y+160, 30, 40); //hana
  
  text("NE22-1137D", 560, 230);
  text("KOARA", 560, 240);

  // ④NE22-1107E 山口琴音
  
  x = 130;
  y = 360;

  //face
  fill(125,172,220);
  noStroke();
  rect(x-70,y-60,120,150,100);
  
  //ears
  ellipse(x-50,y-56,25,100);
  ellipse(x+25,y-56,25,100);
  fill(255,255,255);
  circle(x-47,y-20,20);
  circle(x+26,y-20,20);
  fill(0);
  circle(x-44,y-23,8);
  circle(x+23,y-23,8);
  
  //body
  fill(120,80,0);
  ellipse(x-11,y-20,20,10);
  fill(255);
  rect(x-60,y,100,90,100);
  fill(125,172,220);
  arc(x-40, y+25, 20, 20, radians(180),radians(360));
  arc(x-10, y+25, 20, 20, radians(180),radians(360));
  arc(x+20, y+25, 20, 20, radians(180),radians(360));
  
  fill(0, 0, 0);
  text("NE22-1107E", 80, 470);
  text("TOTORO", 80, 480);
  
  // ⑤NE22-1147A 小島佑太
  x = 380;
  y = 360;
  fill(255, 248, 33);
  circle(x-20, y, 100);
  fill(232, 228, 152);
  triangle(x-70, y-60, x-70, y, x-50, y-30);
  triangle(x+30, y-60, x+30, y, x+10, y-30);
  fill(70, 245, 2);
  rect(x-45, y+15, 50, 20);
  fill(53, 141, 255);
  circle(x-40, y-20, 20);
  circle(x, y-20, 20);
  
  fill(0, 0, 0);
  text("NE22-1147A", 320, 470);
  text("FOX", 320, 480);
  
  //余り
  x = 600;
  y = 360;
  fill(155, 100, 70);
  stroke(155, 100, 70);
  rect(x - 80, y - 80, 160, 160);
  triangle(x, y - 113.14, x - 113.14, y, x + 113.14, y);
  triangle(x, y + 113.14, x - 113.14, y, x + 113.14, y);
  fill(250, 220, 120);
  circle(x - 60, y - 50, 50);
  circle(x + 60, y - 50, 50);
  circle(x, y + 10, 150);
  fill(0, 0, 0);
  circle(x - 30, y + 20, 20);
  circle(x + 30, y + 20, 20);
  fill(255, 250, 240);
  ellipse(x, y + 55, 70, 60);
  fill(0, 0, 0);
  ellipse(x, y + 30, 15, 10);
  
}
