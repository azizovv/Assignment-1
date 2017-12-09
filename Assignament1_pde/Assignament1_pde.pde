
Space_field s;
Space_ship a;
Planets p;
Radar radar;

void setup() {
 

  size (800, 600);
  background (0);
  stroke(255);
  noCursor();
  s = new Space_field();
  a = new Space_ship();
  p= new Planets ();
  radar = new Radar(width / 3, height / 2.5, 100, 1, color(0, 255, 0));
  

  
 
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
}