Circle[] circles = new Circle[5];

void setup(){
  frameRate(60);
  size(1000,1000);
  for(int i = 0;i<circles.length;i++){
   circles[i] = new Circle(circles.length,i); 
  }
  background(255);
}

void draw(){
  //background(255);
  for(int i = 1;i<circles.length;i++){ 
   circles[i].update(circles[i-1]);
   circles[i].show();
  }
}