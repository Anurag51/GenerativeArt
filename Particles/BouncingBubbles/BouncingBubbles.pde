
class lines {
  int x1;
  int y1;
  int rlength;
  int rwidth;
  
  PVector position ;
  PVector velocity;
  
  lines(int x1,int y1,int x2,int y2){
    
    this.x1=x1;
    this.rlength=x2;
    this.y1=y1;
    this.rwidth=y2;
    position = new PVector(x1,y1);
    velocity = new PVector(20,20);
       
    
  }
  
  void draw() {
    stroke(20,33,100);
    strokeWeight(5);
    circle(this.position.x,this.position.y,10);
  }
  
  void update() {
   
   if((this.position.x >400 && this.position.y >400 )||(this.position.x <0 && this.position.y <0)){
     rotate(1);
     this.velocity.x *= (-1);
     this.velocity.y *=-1;
   }
   
    
    this.position.add(this.velocity); 
   
  }
  
}

lines l;

void setup() {
  size(800,800);
  stroke(200);
  l = new lines(400,0,0,0);
  //noLoop();
}

void draw() {
   translate(width/2,height/2);
  l.update();
  l.draw();
}  
