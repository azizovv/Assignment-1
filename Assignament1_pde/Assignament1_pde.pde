float [] x = new float [250];
float [] y = new float [250];
float [] speed = new float [250];

  void setup(){
  
    size (800,600);
    background (0);
    stroke(255);
    noCursor();
 
    
    int i=0;
    while (i < 250) {
    x [i] = random(0, width);
    y [i] = random(0, height);
    speed [i] = random(1, 3);
    i = i +1;
   }
}


 void draw () {
 
    
    {
     
     background(0);
    stroke(127,255,0);
    noFill();
    triangle(mouseX, mouseY+9, mouseX, mouseY-9, mouseX+40, mouseY);
    
    }
   
   {
   
   stroke(224,224,224);
   fill(128,128,128);
   rect(0, 500,800,100);
 

   }
    int i = 0;
    while ( i < 250) {
      float co = map(speed[i],1,3,700,700);
      stroke(co);
      strokeWeight(speed[i]);
        point (x[i], y[i]);

    x[i] = x[i] - speed[i]/2;
    
    if ( x[i] < 0 ){
      
      x[i] = width;
    }
    
    i = i+1;
    
    }
}