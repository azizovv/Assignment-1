Space_field s;
Space_ship a;

void setup() {

  size (800, 600);
  background (0);
  stroke(255);
  noCursor();
  s = new Space_field();
  a = new Space_ship();

  
 
}


void draw () {
  background (0);


  s.draw_triangle();
  s.ellipse_draw();
  s.looping();
  a.draw_rect();
}