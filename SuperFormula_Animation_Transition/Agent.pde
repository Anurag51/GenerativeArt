

class Agent {

  PVector pv;
  color col;

  float theta; // Rotation angle
  float a; // X component amplitude I guess
  float b;  // y component amplitude
  float m ; // Number of spikes for a shape ( it symmetrically gets repeated 360 degree) Combining it with a and b gives interesting result
  float n1 ; // Conveerges or diverges the spikes. it can scale the whole shape too
  float n2;  // n2 and n3 kind of converge and diverge its opposition. basically oppose each other's effect
  float n3;

  float originX;
  float originY;

  Agent(float x, float y) {
    pv= new PVector(x, y);

    originX=0;
    originY=0;

    col = color(0, 0, 0);
  }

  Agent(float theta, float a, float b, float m, float n1, float n2, float n3) {
    this.theta=theta;
    this.a=a;
    this.b=b;
    this.m=m;
    this.n1=n1;
    this.n2=n2;
    this.n3=n3;
  }

  void display() {
    //translate(originX,originY);
    //stroke(color(random(200),color(random(20)),200));
    // stroke(color(105,30,120));
    strokeWeight(2);
    //stroke(color(random(255), (random(255)), (random(255))));
    //stroke(colArr[ (int)random(0,3)]);
    
    //stroke( 0);
   // for (float theta=0; theta<2*TWO_PI; theta+=0.01) {

      float rad = R(t, this.a, this.b, this.m, this.n1, this.n2, this.n3);
      //random(1,2);
      pv.x = originX + rad*cos((t))*4;
      pv.y =  originY + rad*sin((t))*4;
      originX=pv.x;
      originY = pv.y;
      // rad = R(theta,this.a,this.b,this.m,this.n1,this.n2,this.n3);
      // ellipse(pv.x,pv.y, map(sin(theta),-1,1,pv.x-10,pv.x+5),map(cos(theta),-1,1,pv.y-10,pv.y+10));
       push();
     noFill();
       strokeWeight(random(0.3,3));
   //   circle(pv.x,pv.y,(sin(rad*20)+2)*30);
      //  circle(pv.x,pv.y,rad*10);
      
     // circle(pv.x,pv.y,(sin(rad*20)+8)*20);
      //circle(pv.x,pv.y,(sin(rad*20)+10)*20);
     pop();
     // point(pv.x, pv.y);
      // point(map(sin(random(10)),-1,1,pv.x-30,pv.x+30),map(cos(random(10)),-1,1,pv.y-30,pv.y+30));
      for(int i=0;i<360;i+=20){
        push();
        strokeWeight(random(3,4));//(colArr[ (int)random(4,9)]);
        
        rotate(i);
        point(pv.x,pv.y);
       
      
       // circle(random(-100,pv.x),random(-100,pv.y),20);//(sin(rad*20)+8)*20);
    //  if(i%12==0){
    //     noFill();
    //     stroke(colArr[ (int)random(6,8)]);
      rect(pv.x-10,pv.y+100,30,30); 
    //  }
      if( drawLine) {
   //     line(map(sin(random(4)),-1,1,pv.x-rad*20*t,pv.x-rad*10),map(sin(random(10)),-1,1,pv.y-rad*2,pv.y+rad*2),pv.x,pv.y);
      }
      pop();
      
      }
      
   // }
     originX=0;
      originY = 0;
      
      if(t<0.01){
      // this.display(); 
      }
  }


  void update(float t) {

    this.a=20*t;
    // this.a=map(sin(t),-1,1,0,50);
    this.b=20*t;//*t;//map(sin(a),-1,1,10,200);
    this.n1= 1.5;

    this.m=  8;//*(sin(a)+cos(a));
    this.n2=1;
    this.n3=1;
  }
  
 
}
