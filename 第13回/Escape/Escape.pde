import processing.sound.*;
SoundFile sound;
int area = 32;
int clear = 0;
int item;
int door;
int door1;
int door2;
int door3;
int door4;
int color1;
int color2;
int color3;
int color4;
int shadow;
int buttontime ;
String text1;
String text2;
int raretext; //1~9使用
boolean button;
boolean box;
PImage imgarea;
PImage imgitem;
PFont font1;
PFont font2;
PFont font3;
PFont font4;
int SboxX;
boolean Sbox;
int Sfill;
int time;
int seconds;
int minutes;

void setup() {
  size(500, 700);
  background(255);
  noStroke();
  imgarea = loadImage("area.png");
  imgitem = loadImage("item.png");
  sound = new SoundFile(this, "click.mp3");
  frameRate(30);
  font1 = createFont("HannotateSC-W7", 40);
  font2 = createFont("ArialHebrewScholar", 100);
  font3 = createFont("ITFDevanagari-Medium", 100);
  font4 = createFont("ITFDevanagari-Medium", 50);
  newgame();
}

void draw() {
  image(imgarea, area / 10 * -500, area % 10 * -500 + 100, 2500, 2500);
  fill(0);
  rect(0, 0, 500, 100);
  Sfill = SboxX * 155 / 350;
  if (Sfill >= 155) {
    Sfill = 155;
  }
  fill(Sfill);
  if (area == 31) {
    fill(Sfill, 0, 0);
  }
  rect(0, 0, 500, 100);
  rect(0, 600, 500, 100);
  if (item == 1 || item == 2) {
    if (item == 2) {
      strokeWeight(4);
      stroke(255);
      rect(1, 602, 96, 96, 10);
      noStroke();
    }
    image(imgitem, 0, 600, 100, 100);
  }
  cursor();
  noStroke();
  if (area == 20) {
    numberkey();
  } else if (area == 21) {
    colorkey();
  } else if (area == 32 || area == 31) {
    fill(255, 255, 0, 100);
    if (area == 31) {
      fill(0);
      textFont(font4);
      text("奇妙な", 0, 200);
      fill(155, 25, 25, 150);
    }
    circle(300, 505, 135);
    circle(400, 505, 135);
    fill(0);
    textFont(font1);
    text("からの", 250, 300);
    fill(255);
    if (area == 31) {
      fill(255, 0, 0);
    }
    text("スライドでスタート", 120, 665);
    fill(0);
    textFont(font3);
    text("部屋", 50, 300);
    if (area == 31) {
      fill(255, 255, 255);
    }
    text("脱出", 250, 540);
    strokeWeight(4);
    stroke(255);
    noFill();
    rect(SboxX + 4, 604, 90, 90, 10);
    fill(255);
    rect(SboxX + 20, 640, 40, 20);
    triangle(SboxX + 50, 620, SboxX + 50, 680, SboxX + 80, 650);
  } else if (area == 30) {
    textFont(font3);
    fill(255);
    text("脱出成功", 50, 90);
    fill(0);
    textFont(font1);
    text("何故あの部屋に", 10, 175);
    text("閉じ込められたのか", 10, 225);
    text("あの死体はなんだったのか", 10, 275);
    text("謎は深まるばかりだ。", 10, 325);
    minutes = time / 60000;
    seconds = time / 1000 - minutes * 60;
    text(minutes + "分" + seconds + "秒", 300, 590);
    text("クリアタイム", 250, 540);
    textFont(font4);
    fill(255);
    if (100 < mouseX && 600 < mouseY) {
      fill(255, 255, 0);
      text("↪", 70, 675);
    }
    text("タイトルに戻る", 130, 670);
  }
  if (!(30 <= area && area <= 32)) {
    textFont(font1);
    fill(255);
    text(text1, 10, 35);
    text(text2, 10, 85);
  }
  if (text2 == "　　　人と結構違うんだな") {
    text("ALIEN", random(6) + 7, random(6) + 82);
    text(" ボク", random(6) + 7, random(6) + 82);
    text("space", random(6) + 7, random(6) + 82);
    text("失楽園", random(6) + 7, random(6) + 82);
    text(" ？類", random(6) + 7, random(6) + 82);
    text("イーバ", random(6) + 7, random(6) + 82);
    text("異星人", random(6) + 7, random(6) + 82);
    text("4423", random(6) + 7, random(6) + 82);
    text("DiffW", random(6) + 7, random(6) + 82);
    text(" 宇宙", random(6) + 7, random(6) + 82);
  } else if (text2 == "　　は　　から輸入した▶") {
    text("あい　そこ", random(6) + 7, random(6) + 82);
    text("勇気　宇宙", random(6) + 7, random(6) + 82);
    text(" 友　　他", random(6) + 7, random(6) + 82);
    text("エソ　ベガ", random(6) + 7, random(6) + 82);
    text("peop　othe", random(6) + 7, random(6) + 82);
    text("NEO　BEI", random(6) + 7, random(6) + 82);
    text("あれ　どれ", random(6) + 7, random(6) + 82);
    text("？？　？？", random(6) + 7, random(6) + 82);
    text("607　598", random(6) + 7, random(6) + 82);
    text(" ジ　　ト", random(6) + 7, random(6) + 82);
  }
  if (millis() - buttontime > 400 && button) {
    area = 41;
    button = false;
  } else if (millis() - buttontime > 300 && button) {
    area = 42;
  } else if (millis() - buttontime > 200 && button) {
    area = 43;
  } else if (millis() - buttontime > 100 && button) {
    area = 44;
  } else if (millis() - buttontime > 0 && button) {
    area = 42;
  }
  if (Sbox) {
    if (mouseX < 50) {
      SboxX = 0;
    } else if (mouseX > 450) {
      SboxX = 400;
    } else {
      SboxX = mouseX - 48;
    }
  }
  noStroke();
  fill(0, 0, 0, shadow);
  rect(0, 0, 500, 700);
  shadow -= 3;
}

void mouseReleased() {
  if (Sbox) {
    Sbox = false;
    if (mouseX > 400) {
      shadow = 255;
      area = 0;
      time = millis();
    } 
    SboxX = 0;
  }
}

void cursor() {
  if (shadow < 0) {
    fill(255, 255, 0, 50);
    if (area == 0 || area == 10 || area == 40 || area == 1 || area == 41 || area == 2 || area == 12) {
      if (mouseX < 50 && mouseY < 600 && 100 <mouseY) {
        rect (0, 100, 50, 500);
      }
      if (mouseX > 450 && mouseY < 600 && 100 <mouseY) {
        rect (450, 100, 50, 500);
      }
    } else if (area == 11 || area == 21 || area == 33 || area == 20 || area == 3 || area == 22 || area == 14 || area == 13 ||  area == 23 || area == 24) {
      if (550 < mouseY && mouseY < 600) {
        rect (0, 550, 500, 50);
      }
    }
  }
}

void mousePressed() {
  if (!button && shadow <= 0) {
    if (0 < mouseX && mouseX < 100 && 600 < mouseY && mouseY < 700 &&(area == 31 || area == 32)) {
      Sbox = true ;
    }
    if (100 < mouseY && mouseY < 600) {
      sound.play();
      text1 = "特に何もないようだ。";
      text2 = "";

      if (area == 3 || area == 22 || area == 14 || area == 13) {
        if (550 < mouseY && mouseY < 600) {
          if (item == 0) {
            area = 2;
            text1 = "";
          } else {
            area = 12;
            text1 = "";
          }
        }
      } else if (area == 40 || area == 41 || area == 0 || area == 2 || area == 12 || area == 1) {
        if (185 < mouseX && mouseX < 315 && 120 < mouseY && mouseY < 165) {
          text1 = "明かりがついている。";
          text2 = "………あれ、消せないな";
        }
      }
      if (area == 22) {
        text1 = "何の変哲もない時計だ。";
        text2 = "隣にシールが貼ってある";
      } else if (area == 1) {
        if (mouseX < 50) {
          text1 = "左を向いた";
          if (item == 3) {
            area = 41;
          } else {
            area = 40;
          }
        }
        if (mouseX > 450) {
          text1 = "右を向いた";
          if (door == 2) {
            area = 10;
          } else {
            area = 0;
          }
        } else if (210 < mouseX && mouseX < 290 && 480 < mouseY && mouseY < 520) {
          area = 11;
          text1 = "箱がある。";
        } else if (180 < mouseX && mouseX < 220 && 400 < mouseY && mouseY < 470) {
          if (raretext == 8) {
            text1 = "ふむふむこの星は他星から";
            text2 = "沢山影響を受けているのか";
            raretext = 0;
          } else if (raretext == 7) {
            text1 = "エアコンは地球から";
            text2 = "　　は　　から輸入した▶";
            raretext = 8;
          } else if (raretext == 6) {
            text1 = "この星は色々な星と";
            text2 = "貿易をおこなっている。▶";
            raretext = 7;
          } else {
            text1 = "歴史書のようだ。";
            text2 = "";
            if (clear >= 1) {
              text1 = "歴史書のようだ。▶";
              raretext = 6;
            }
          }
        } else if (280 < mouseX && mouseX < 315 && 320 < mouseY && mouseY < 395) {
          if (raretext == 5) {
            text1 = "目は二つ触手は四本。我々";
            text2 = "　　　人と結構違うんだな";
            raretext = 0;
          } else if (raretext == 4) {
            text1 = "へぇ、皮膚を分厚く強く進";
            text2 = "化させなかったのか▶";
            raretext = 5;
          } else if (raretext == 3) {
            text1 = "地球人は熱や怪我から身を";
            text2 = "守る為に毛が生えている▶";
            raretext = 4;
          } else {
            text1 = "宇宙人図鑑のようだ。";
            if (clear >= 1) {
              text1 = "宇宙人図鑑のようだ。地球";
              text2 = "という星があるらしい▶";
              raretext = 3;
            }
          }
        } else if (49 < mouseX && mouseX < 120 && 440 < mouseY && mouseY < 630) {
          if (raretext == 2) {
            text1 = "見るだけで気持ちが悪い。";
            text2 = "早くこの部屋から出たい";
            raretext = 0;
          } else {
            text1 = "うわ……";
            text2 = "何故こんなものがここに▶";
            if (clear >= 1) {
              text2 = "死体が転がっている▶";
            }
            raretext = 2;
          }
        } else if (200 < mouseX && mouseX < 260 && 360 < mouseY && mouseY < 395) {
          if (raretext == 9) {
            text1 = "650年くらい前だったか";
            text2 = "時が経つのは早い";
            raretext = 0;
          } else {
            text1 = "モニュメントがある。これ";
            text2 = "昔すごく流行ったよな";
            if (clear >= 1) {
              text2 = "昔すごく流行ったよな▶";
              raretext = 9;
            }
          }
        } else {
          raretext = 0;
        }
        if (370 < mouseX && mouseX < 520 && 270 < mouseY && mouseY < 310) {
          text1 = "エアコンだ。";
          text2 = "この形もだいぶ見慣れたな";
        }
      } else if (area == 11) {
        if (140 < mouseX && mouseX < 365 && 293 < mouseY && mouseY < 433) {
          if (box) {
            area = 33;
            text1 = "カードが入っていた";
          } else {
            area = 21;
            color1 = 7;
            color2 = 7;
            color3 = 7;
            color4 = 7;
          }
        }
        if (550 < mouseY && mouseY < 600) {
          area = 1;
          text1 = "";
        }
      } else if (area == 21 || area == 33) {
        if (area == 33) {
          text1 = "9と六芒星かな、これは";
        } else if (area == 21) {
          if (157 < mouseX && mouseX < 192 && 310 < mouseY && mouseY < 345) {
            color1 ++;
            text1 = "";
          } else if (202 < mouseX && mouseX < 237 && 310 < mouseY && mouseY < 345) {
            color2 ++;
            text1 = "";
          } else if (247 < mouseX && mouseX < 282 && 310 < mouseY && mouseY < 345) {
            color3 ++;
            text1 = "";
          } else if (292 < mouseX && mouseX < 327 && 310 < mouseY && mouseY < 345) {
            color4 ++;
            text1 = "";
          } else {
            text1 = "カラーキーがついている";
            text2 = "開かない。";
          }
          if (color1 % 8 * 1000 + color2 % 8 * 100 + color3 % 8 * 10 + color4 % 8 == 1471) {
            box = true;
            text1 = "鍵が開いた";
          }
          if (box) {
            area = 33;
          }
        }
        if (550 < mouseY && mouseY < 600) {
          area = 11;
          text1 = "";
        }
      } else if (area == 3) {
        if (50 < mouseX && mouseX < 250 && 270 < mouseY && mouseY < 370) {
          area = 13;
          text1 = "枕の下に何かある";
        } else {
          text1 = "ベッドだ。";
        }
      } else if (area == 13) {
        if (50 < mouseX && mouseX < 250 && 270 < mouseY && mouseY < 370) {
          area = 23;
          text1 = "カードが置いてある。";
        } else {
          area = 3;
          text1 = "ベッドだ。";
        }
      } else if (area == 23) {
        if (550 < mouseY && mouseY < 600) {
          area = 13;
          text1 = "";
        } else {
          text1 = "0とよくわからない記号";
          text2 = "が書かれている。";
        }
      } else if (area == 14) {
        if (250 < mouseX && mouseX < 390 && 210 < mouseY && mouseY < 380) {
          area = 24;
          text1 = "ゴミ箱の中に";
          text1 = "カードが入っていた。";
        }
      } else if (area == 24) {
        if (550 < mouseY && mouseY < 600) {
          area = 14;
          text1 = "";
        } else {
          text1 = "8と書いてある。";
          text2 = "この記号はなんだ？";
        }
      } else if (area == 0 || area == 10) {
        if (mouseX < 50) {
          text1 = "左を向いた";
          area = 1;
        }
        if (mouseX > 450) {
          text1 = "右を向いた";
          if (item == 0) {
            area = 2;
          } else {
            area = 12;
          }
        }
        if (215 < mouseX && mouseX < 290 && 370 < mouseY && mouseY < 400 && door == 0) {
          area = 20;
          text1 = "ナンバーキーがついている";
        } else if (187 < mouseX && mouseX < 315 && 320 < mouseY && mouseY < 507) {
          text1 = "ドアだ。";
          text2 = "鍵がかかっていて開かない";
          if (door == 1) {
            door = 2;
            area = 10;
            text1 = "ドアが開いた";
            text2 = "";
          } else if (door == 2) {
            area = 30;                    //クリア
            item = 3;
            shadow = 255;
            clear ++;
            time = millis() - time;
          }
        }
      } else if (area == 2 || area == 12) {
        if (mouseX < 50) {
          text1 = "左を向いた";
          if (door == 2) {
            area = 10;
          } else {
            area = 0;
          }
        } else if (mouseX > 450) {
          text1 = "右を向いた";
          if (item == 3) {
            area = 41;
          } else {
            area = 40;
          }
        } else if (0 < mouseX && mouseX < 200 && 450 < mouseY && mouseY < 550) {
          area = 3;
          text1 = "ベットがある。";
        } else if (145 < mouseX && mouseX < 225 && 252 < mouseY && mouseY < 332) {
          area = 22;
          text1 = "時計がある。";
        } else if (400 < mouseX && mouseX < 450 && 475 < mouseY && mouseY < 525) {
          area = 14;
          text1 = "ゴミ箱だ。";
        }
      } else if (area == 41 || area == 40) {
        if (mouseX < 50) {
          text1 = "左を向いた";
          if (item == 0) {
            area = 2;
          } else {
            area = 12;
          }
        } else if (mouseX > 450) {
          text1 = "右を向いた";
          area = 1;
        } else if (area == 40 || area == 41) {
          if (197 < mouseX && mouseX < 297 && 525 < mouseY && mouseY < 555) {
            text1 = "座布団だ。";
          }
          if (400 < mouseX && mouseX < 451 && 440 < mouseY && mouseY < 540) {
            if (raretext == 2) {
              text1 = "見るだけで気持ちが悪い。";
              text2 = "早くこの部屋から出たい";
              raretext = 0;
            } else {
              text1 = "うわ……";
              text2 = "何故こんなものがここに▶";
              if (clear >= 1) {
                text2 = "死体が転がっている▶";
              }
              raretext = 2;
            }
          }
          if (area == 40) {
            if (155 < mouseX && mouseX < 179 && 396 < mouseY && mouseY < 420) {
              if (item == 2) {
                item = 3;
                area = 41;
                text1 = "赤い部品をはめた";
              } else if (!(item == 3)) {
                text1 = "なんだろうこれ";
                text2 = "丸いくぼみが見える。";
              }
            }
            if (210 < mouseX && mouseX < 292 && 400 < mouseY && mouseY < 470) {
              text1 = "テレビがある。";
              text2 = "電源はついていないようだ";
            }
          } else if (area == 41) {
            if (155 < mouseX && mouseX < 179 && 396 < mouseY && mouseY < 420 && item == 3) {
              buttontime = millis();
              button = true;
              text1 = "！！！！";
              raretext = 1;
            }
            if (210 < mouseX && mouseX < 292 && 400 < mouseY && mouseY < 470) {
              if (raretext == 1) {
                text1 = "なんだったんだ今のは…";
                text2 = "電源は消えている";
                raretext = 0;
              } else {
                text1 = "テレビがある。";
                text2 = "電源はついていないようだ";
              }
            }
          }
        }
      } else if (area == 20) {
        if (65 < mouseX && mouseX < 149 && 285 < mouseY && mouseY < 367) {
          if (door == 1) {
            text1 = "鍵は既に開いている";
          } else {
            door1 ++;
            text1 = "";
          }
        } else if (169 < mouseX && mouseX < 253 && 285 < mouseY && mouseY < 367) {
          if (door == 1) {
            text1 = "鍵は既に開いている";
          } else {
            door2 ++;
            text1 = "";
          }
        } else if (272 < mouseX && mouseX < 356 && 285 < mouseY && mouseY < 367) {
          if (door == 1) {
            text1 = "鍵は既に開いている";
          } else {
            door3 ++;
            text1 = "";
          }
        } else if (374 < mouseX && mouseX < 458 && 285 < mouseY && mouseY < 367) {
          if (door == 1) {
            text1 = "鍵は既に開いている";
          } else {
            door4 ++;
            text1 = "";
          }
        } else {
          text1 = "ナンバーキーだ。";
        }
        if (door1 % 10 * 1000 + door2 % 10 * 100 + door3 % 10 * 10 + door4 % 10 == 8093) {
          door = 1;
          text1 = "鍵が開いた";
        }
        if (550 < mouseY && mouseY < 600) {
          area = 0;
        }
      }
    }
    if (0 < mouseX && mouseX < 100 && 600 < mouseY && mouseY < 700 ) {
      if (item == 1) {
        sound.play();
        item = 2;
        text1 = "赤い部品だ";
        text2 = "何に使うんだろう";
      } else if (item == 2) {
        sound.play();
        item = 1;
        text1 = "";
        text2 = "";
      }
    }
    if (area == 30) {
      sound.play();
      if (100 < mouseX && 600 < mouseY) {
        area = 31;
        newgame();
        shadow = 255;
      }
    } else if (area == 2 || area == 12) {
      if (area == 2) {
        if (240 < mouseX && mouseX < 280 && 500 < mouseY && mouseY < 530) {
          item = 1;
          area = 12;
          text1 = "赤い部品を拾った";
        }
      }
    }
  }
}

void newgame() {
  //変数セッティング
  box = false;
  item = 0;
  door = 0;
  door1 = 0;
  door2 = 0;
  door3 = 0;
  door4 = 0;
  color1 = 0;
  color2 = 0;
  color3 = 0;
  color4 = 0;
  shadow = 0;
  text1 = "見知らぬ場所だ";
  text2 = "ここはどこだろう。";
  if (clear >= 1) {
    text1 = "見知らぬ場所だ。随分地球";
    text2 = "に影響されている部屋だな";
  }
  raretext = 0;
  button = false;
  box = false;
  SboxX = 0;
  Sbox = false;
  Sfill = 0;
}

void numberkey() {
  fill(0);
  textFont(font2);
  if (door1 % 10 == 3) {
    text("ε", 80, 350);
  } else {
    text(door1 % 10, 80, 350);
  }
  if (door2 % 10 == 3) {
    text("ε", 185, 350);
  } else {
    text(door2 % 10, 185, 350);
  }
  if (door3 % 10 == 3) {
    text("ε", 290, 350);
  } else {
    text(door3 % 10, 290, 350);
  }
  if (door4 % 10 == 3) {
    text("ε", 395, 350);
  } else {
    text(door4 % 10, 395, 350);
  }
}

void colorkey() {
  color1 = color1 % 8;
  color2 = color2 % 8;
  color3 = color3 % 8;
  color4 = color4 % 8;
  if (color1 == 0) { //abs()があればn次関数を使ってさらに短く処理できる
    fill(0);
  } else if (color1 == 1) {
    fill(255, 0, 0);
  } else if (color1 == 2) {
    fill(0, 255, 0);
  } else if (color1 == 3) {
    fill(0, 0, 255);
  } else if (color1 == 4) {
    fill(0, 255, 255);
  } else if (color1 == 5) {
    fill(255, 0, 255);
  } else if (color1 == 6) {
    fill(255, 255, 0);
  } else {
    fill(255);
  }
  rect(157, 310, 35, 35);
  if (color2 == 0) {
    fill(0);
  } else if (color2 == 1) {
    fill(255, 0, 0);
  } else if (color2 == 2) {
    fill(0, 255, 0);
  } else if (color2 == 3) {
    fill(0, 0, 255);
  } else if (color2 == 4) {
    fill(0, 255, 255);
  } else if (color2 == 5) {
    fill(255, 0, 255);
  } else if (color2 == 6) {
    fill(255, 255, 0);
  } else {
    fill(255);
  }
  rect(202, 310, 35, 35);
  if (color3 == 0) {
    fill(0);
  } else if (color3 == 1) {
    fill(255, 0, 0);
  } else if (color3 == 2) {
    fill(0, 255, 0);
  } else if (color3 == 3) {
    fill(0, 0, 255);
  } else if (color3 == 4) {
    fill(0, 255, 255);
  } else if (color3 == 5) {
    fill(255, 0, 255);
  } else if (color3 == 6) {
    fill(255, 255, 0);
  } else {
    fill(255);
  }
  rect(247, 310, 35, 35);
  if (color4 == 0) {
    fill(0);
  } else if (color4 == 1) {
    fill(255, 0, 0);
  } else if (color4 == 2) {
    fill(0, 255, 0);
  } else if (color4 == 3) {
    fill(0, 0, 255);
  } else if (color4 == 4) {
    fill(0, 255, 255);
  } else if (color4 == 5) {
    fill(255, 0, 255);
  } else if (color4 == 6) {
    fill(255, 255, 0);
  } else {
    fill(255);
  }
  rect(291, 310, 35, 35);
}
