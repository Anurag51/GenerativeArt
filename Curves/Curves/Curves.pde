
float t;
float grid = 110;
float margin= 110;
PVector startPos ;
color[] colArr = {
  color(255), //White
  color(200, 5, 20), //Red
  color(55, 188, 25), //Green
  color(15, 35, 250), //Blue
  // color(125, 235, 250), //Light Blue
  color(240, 245, 13), //yellow
  color(40, 245, 13), //yellow
  color(160, 60, 235)   //purple

};

void setup() {
  size(1980, 980,P3D);
  startPos = new PVector();
  startPos.x = getX(60);
  startPos.y = getY(startPos.x);
  //noLoop();
}

void draw() {

 // background(221, 237, 237);
 // blendMode(SUBTRACT);
  noFill();
  stroke(255);
   translate(width/2,height/2);
  float d=grid*0.65;
  int k=0;
 
  int colArrNum = (int) random(7);
     // stroke(colArr[colArrNum]);
      stroke(colArr[3]);
  float x = getX(t+60);
  float y = getY(x);
  if(x>startPos.x && y>startPos.y&&t>100){
      translate(startPos.x+10,0);
      t=1;
      startPos.x+=10;
      x = startPos.x;
    
  }
   circle(x,y,40);
 //  rotateY(t);
  strokeWeight(3);
   pushMatrix();
  //  translate(i, j);
  
  
   popMatrix();

    
  
  //for (float i=margin+48; i<=width-margin; i+=grid) {
  //  for (float j=margin+80; j<=height-margin; j+=grid) {

  //    for ( k=0; k<4; k++) {
  //      int colArrNum = (int) random(7);
  //      stroke(colArr[colArrNum]);
  //      strokeWeight(random(6));
  //      float x1= -random(d);
  //      float y1= -random(d);
  //      pushMatrix();
  //      translate(i, j);
  //      rectMode(CENTER);
  //      rect(x1, x1, y1, y1, random(d));
  //      popMatrix();
  //    }
  //  }
  //}
  t+=1;
 // delay(100);
  //save(t+"Bubbles.png");
}

float getX(float t){
   return 200*(sin((t/100)));// + cos(t/30);
}

float getY(float x){
   return 200*(sin((t/100))) ;//+ cos(t/30);
}

void keyPressed() {
  if (key == ' ') redraw();
}
