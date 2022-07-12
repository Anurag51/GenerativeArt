 //<>//
float t= radians(40);
float cycle=0;
float direction=1;
Agent agents[] = new Agent[1]; ;
 color[] colArr = {#EDFF33, #ADD9FF, #A3D9CF, #025951, #A6367B, #F6CA07, #E85959 ,#640505, #83BF32, #7832BF};
void setup() {
  
  size(1280,1000,P3D);
 
  for(int i=0; i<agents.length;i++){
    agents[i]=new Agent(random(40),random(100));
    cycle=t;
  }
 
 background(0);//colArr[0]);
 // noLoop();
}

void draw() {
  //blendMode(BLEND);
  //background(0);
  push();
  noFill();
  strokeWeight(30);
  stroke(colArr[5]);
   rect(80,80,1280-160,1000-160);
   pop();
  
 int k=(int)random(0,9);
   
   //if(t>4*TWO_PI || t<TWO_PI)
   if(t>4*TWO_PI || t<0){
    direction=-direction;
  }
 if(cycle>TWO_PI/4 || t<0) {
   stroke(colArr[ k]);
   fill(colArr[k]);
   cycle=0;
 
}
  
 
 // t+=0.01*direction ;
  
 //translate(width/2,height/2);
//  circle(0,0,100);
int i=0;
  for(Agent agent:agents){
    pushMatrix();
    translate(width/2-i*20,height/2-i*20); i++;
 //   rotateZ(i*10);
  //   rotate(t%TWO_PI);
  agent.update(t);
  agent.display();
  popMatrix();
  }
  //t+=0.1;
  t+=0.01*direction ;
  cycle += 0.01;
  
  //t+=0.05 ;//0.05;
  
// delay(100);
  
  
}



 
float R(float theta,float a,float b,float m,float n1,float n2,float n3) {
    
    float r=0;
    
    float _m = m*theta/4.0;
    
    r = pow(pow(abs(cos(_m)/a),n2) + pow(abs(sin(_m)/b),n3),-1/n1);
    
    return r;
    
  }
  
