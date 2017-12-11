
Space_field s;
Space_ship a;
Planets p;
Radar radar; 
//Data d;
Clock c;


void setup() {


  size (800, 600);
  background (0);
  stroke(255);
  noCursor();
  s = new Space_field();
  a = new Space_ship();
  p= new Planets ();
  radar = new Radar(width / 2.8, height / 2.5, 50, 1, color(255, 255, 0));
  //d = new Data();
  c= new Clock();
 
 
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
  //d.draw_data();
  c.draw_clock();
  c.draw_clock1();
}