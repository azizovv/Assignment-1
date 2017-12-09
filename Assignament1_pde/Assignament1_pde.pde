Space_field s;
Space_ship a;
Planets p;

void setup() {

  size (800, 600);
  background (0);
  stroke(255);
  noCursor();
  s = new Space_field();
  a = new Space_ship();
  p= new Planets ();
  

  
 
}


void draw () {
  background (0);


  s.draw_triangle();
  s.ellipse_draw();
  s.looping();
  a.draw_rect();
  a.draw_arct();
}