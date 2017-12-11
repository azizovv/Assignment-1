 boolean on = false;
 
int btnX = 50;
int btnY = 200;
int btnW = 70;
int btnH = 100;

import ddf.minim.*;
Space_field s;
Space_ship a;
Planets p;
Radar radar;
Clock c;
//Light l;
Minim minim;
AudioPlayer player;


void setup() {

      size(800,600);
  
  background (0);
  stroke(255);
  noCursor();
  s = new Space_field();
  a = new Space_ship();
  p= new Planets ();
  radar = new Radar(width / 2.8, height / 2.5, 50, 1, color(255, 255, 0));
  c= new Clock();
  //l= new Light();
  minim = new Minim(this);
    player =minim.loadFile("spaceship.mp3");
    player.loop();
    player =minim.loadFile("sound1.mp3");
     player.play();
     player =minim.loadFile("radar.mp3");
     player.loop();
    
}



void draw () {
  background (0);


  s.draw_triangle();
  s.ellipse_draw();
  s.looping();
  a.draw_rect();
  a.draw_arct();
  p. plannets();
  radar.update();
  radar.render();
  c.draw_clock();
  c.draw_clock1();
  //l.draw_light();
  //l.mousePressed_1();
  
  if (on == true) {
 background (0);
  stroke(255);
  noCursor(); 
  
  }
  else {
    //background(0); 
  }
    
  
 
    // light switch
  fill(251,252,204);
  rect(btnX, btnY, btnW, btnH);


}


void mousePressed() {
  if ( mouseX > btnX && mouseX < (btnX+btnW) && mouseY > btnY && mouseY < (btnY+btnH)) {
    // toggle the value of 'on'
    // in other words, if on == true, then on becomes not true (false) and
    // vice versa
    on = !on;   // on = (not)on
  }
}