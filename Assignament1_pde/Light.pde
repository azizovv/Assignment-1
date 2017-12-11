class Light {
  boolean on = false;
 
int btnX = 50;
int btnY = 200;
int btnW = 70;
int btnH = 100;

void draw_light() {
  // keep looking at the boolean variable to decide on the
  // background color and image of lamp
  if (on == true) {
    background(0);
   quad(150,10,170,10,180,40,130,40);
  line(130,42,125,50);
 line(140,42,137,50);
line(155,42,155,50);
line(170,42,174,50);
line(180,42,184,50);
  }
  else {
 
  }
    
  
 
    // light switch
  fill(251,252,204);
  rect(btnX, btnY, btnW, btnH);


 
}
 
//button limits
void mousePressed_1() {
  if ( mouseX > btnX && mouseX < (btnX+btnW) && mouseY > btnY && mouseY < (btnY+btnH)) {
    // toggle the value of 'on'
    // in other words, if on == true, then on becomes not true (false) and
    // vice versa
    on = !on;   // on = (not)on
  }
}
}