

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

    strokeWeight(2);

    float rad = R(t, this.a, this.b, this.m, this.n1, this.n2, this.n3);
    pv.x = originX + rad*cos((t))*4;
     pv.y =  originY + rad*sin((t))*4;
    push();
    noFill();
    strokeWeight(random(0.3, 3));
    
    pop();
   
    for (int i=0; i<360; i+=10) {
      push();
      strokeWeight(random(2.3, 6));//(colArr[ (int)random(4,9)]);

      rotate(i);
      point(pv.x, pv.y);
      pop();
    }
  }


  void update(float t) {

    this.a=20*t;
    // this.a=map(sin(t),-1,1,0,50);
    this.b=20*t;//*t;//map(sin(a),-1,1,10,200);
    this.n1= 1.5;

    this.m=  3;//map(sin(t/4),-1,1,0,3.5);
    this.n2=1;
    this.n3=1;
  }
}
