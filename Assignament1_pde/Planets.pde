class Planets {
    float r;
   float [] ey = new float [0];
  float [] ex = new float [140];
  
}

 void draw_plannet() {
   pushMatrix();
   translate(width/2, height/2);
   rotate(radians(r));
   //sun
   fill(255, 255, 0);
   ellipse(0,0,100,100);
   
   
 }
 