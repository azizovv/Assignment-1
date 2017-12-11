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
    //background(0);

  }
  else {
 
  }
    
  
 
    // light switch
  fill(251,252,204);
  rect(btnX, btnY, btnW, btnH);


 
}
 
//button limits
void mousePressed() {
  if ( mouseX > btnX && mouseX < (btnX+btnW) && mouseY > btnY && mouseY < (btnY+btnH)) {
    // toggle the value of 'on'
    // in other words, if on == true, then on becomes not true (false) and
    // vice versa
    on = !on;   // on = (not)on
  }
}
}