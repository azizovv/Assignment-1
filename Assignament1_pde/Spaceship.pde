class Space_ship{
  
 void draw_rect() {

  stroke(224,224,224);
  fill(224);
  rect(0, 500, 800, 100);
  rect(0,0,50,900);
  rect(750,0,50,900);
}
void draw_arct() {
   translate(width/2, height/2);
  rotate(TWO_PI);
  fill(224);
  arc(0, -450, 900, 500,0 , PI); 
  
}
}