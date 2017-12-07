float [] speedUp = new float [100];
float [] x = new float [100];
float [] y = new float [100];

void setup(){
    
  
  
  
  
size (1000,700);
background (0);
stroke(255);
    
 
int i=0;
while (i < 100) {
    x [i] = random(0, width);
    y [i] = random(0, height);
    speedUp [i] = random(1, 3);
    i = i +1;
   }
}


 void draw () {
    background (0);
    
   
    int i = 0;
    while ( i < 100) {
      float co = map(speedUp[i],1,3,100,255);
      stroke(co);
      strokeWeight(speedUp[i]);
        point (x[i], y[i]);

    x[i] = x[i] - speedUp[i];
    
    if ( x[i] < 0 ){
      
      x[i] = width;
    }
    
    i = i+1;
    
    }
}