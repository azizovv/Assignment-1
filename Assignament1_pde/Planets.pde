class Planets {
 float ex=140;
  float ey=0;
  float r=0;

 
  

   

void plannets() {
 
  pushMatrix();
  translate(width/22, height/22);
  rotate(radians(r));
  //sun
  fill(255, 255, 0);
  ellipse(0, 0, 100, 100);

  //earth
  fill(0, 255, 100);
  ellipse(ex, ey, 20, 20);
  pushMatrix();
  //moon
  translate(ex, ey);
  rotate(radians(-r*3));
  fill(255);
  ellipse(25, ey, 5, 5);
  popMatrix();

  popMatrix();
  r += 1;
}
}