class Compass {
PFont myFont;


void draw_comp(){

arrow(width/20, height/20, mouseX, mouseY, color(200,0,200));
arrow(width/20, height/20, width/20, 50, color(0,200,200));


textAlign(CENTER);
fill(0, 102, 153);
text("North", width/4, 0.5); 
PVector v1 = new PVector(20, width/8-50);
PVector v2 = new PVector((width/8)-mouseX, (height/8)-mouseY); 
float a = PVector.angleBetween(v1, v2);
if (mouseX < width/8)
text(-degrees(a)+360 + " degrees", width/8, height/4*3); 
else
text(degrees(a) + " degrees", width/8, height/4*3);  // Prints "10.304827");
text("(Clockwise from North)", width/8, height*.9);
fill(200, 0, 200);
text("Your direction", mouseX-100, mouseY+100);  // Prints "10.304827");

}

void arrow(int x1, int y1, int x2, int y2, color c) {
  smooth();
  stroke (c);
  strokeWeight(1);
  line(x1, y1, x2, y2);
  pushMatrix();
  translate(x2, y2);
  float a = atan2(x1-x2, y2-y1);
  rotate(a);
  line(0, 0, -10, -10);
  line(0, 0, 10, -10);
  popMatrix();
} 

void arrow(int x1, int y1, int x2, int y2) {
  line(x1, y1, x2, y2);
  pushMatrix();
  translate(x2, y2);
  float a = atan2(x1-x2, y2-y1);
  rotate(a);
  line(0, 0, -10, -10);
  line(0, 0, 10, -10);
  popMatrix();
}
}