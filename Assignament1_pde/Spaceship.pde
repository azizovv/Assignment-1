class Space_ship{
  
 void draw_rect() {

  stroke(96, 96, 96);
  fill(128);
  rect(0, 500, 800, 100);
 
}
void draw_arct() {
   translate(width/2, height/2);
  rotate(TWO_PI);
  fill(128);
  arc(0, -450, 900, 500,0 , PI); 
  
}
}