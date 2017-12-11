class Space_field {

  float [] x = new float [250];
  float [] y = new float [250];
  float [] speed = new float [250];


  Space_field() { 

  int i=0;
  while (i < 250) {
    x [i] = random(0, width);
    y [i] = random(0, height);
    speed [i] = random(1, 3);
    i = i +1;
  }
}




void draw_triangle() {


  stroke(127, 255, 0);
  noFill();
  triangle(mouseX, mouseY+9, mouseX, mouseY-9, mouseX+40, mouseY);
 
}



void ellipse_draw() {

  fill(255);
  ellipse(650, 550, 80, 80);
}




void looping() {

  int i = 0;
  while ( i < 250) {
    float co = map(speed[i], 1, 3, 100, 255);
    stroke(co);
    strokeWeight(speed[i]);
    point (x[i], y[i]);

    x[i] = x[i] - speed[i];

    if ( x[i] < 0 ) {

      x[i] = width;
    }  

    i = i+1;
}

}
}