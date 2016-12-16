class Circle{
 float x; //x coord
 float y; //y coord
 float oldX;
 float oldY;
 float r; //radius
 float a; //angle relative to previous circle
 int tot; //total num of circles
 int indNum; //individual number of circle
 float speedMod; //random speed modifier
 float colorMod; //color modifier
 
 //used to create initial circles
 Circle(int num, int ind){
  x=width/2;//center
  y=height/2;//center
  r=width/(num*2);//radius is set to constant size
  a=random(0,TWO_PI); //random starting angle
  speedMod=random(-1,1); //initial speedMod
  tot=num;
  colorMod = ind;
 }
 
 //updates position of circle;
 void update(Circle input){
  oldX=x;
  oldY=y;
  x=input.x+(this.r+input.r)*cos(this.a)/2;
  y=input.y+(this.r+input.r)*sin(this.a)/2;
  a+=10*(PI/100)*speedMod*(mouseX-width/2)/width;
  indNum = input.indNum+1;
 }
 
 void showPaths(){
   if(oldX==width/2 && oldY==width/2){
     return;
   }
  strokeWeight(2);
  stroke(100+(255/tot)*colorMod,170-(255/2*tot)*colorMod,80+(255/tot)*colorMod);
  line(x,y,oldX,oldY);
 }
 
 void showHeatMap(){
  fill(100+(255/tot)*colorMod,170-(255/2*tot)*colorMod,80+(255/tot)*colorMod,1);
  noStroke();
  ellipse(x,y,r,r);
 }
 
 void show(){
  fill(40-(128/tot)*colorMod,150-(128/tot)*colorMod,255-(128/tot)*colorMod);
  ellipse(x,y,r,r);
  textSize(30);
  fill(0);
  text(indNum,x,y);
 }

}