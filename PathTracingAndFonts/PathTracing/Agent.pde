class Agent {
  float x, y;
  float size ;
  float r, t;
  color col ;
  float w, h, margin;
  float distCenterX;
  float distCenterY;
  float depthCol = 200*200;
  float rc, g, b;
  float shiftX=0;
  float shiftY=0;
  PFont pfont;
 
  Agent(float w_, float h_, float margin_) {
    this.w = w_;
    this.h = h_;
    this.margin = margin_;

    r=random(w);
    t = random(TWO_PI);
    x = w + cos(t) * r ;
    y = h + sin(t) * r ;
    // colorMode(HSB);
    size =random(0.3, 3);
    rc = random(0, 255);
    g = random(0, 255);
    b = random(0, 255);
    col = color(rc, g, b);
    rectMode(CENTER);
    
     
    // pfont = createFont("InkFree-48.vlw", 32);
  }


  Agent(float w_, float h_, float margin_, float shiftX, float shiftY) {
    this.w = w_;
    this.h = h_;
    this.margin = margin_;
    this.shiftX=shiftX;
    this.shiftY = shiftY;
    r=random(w);
    t = random(TWO_PI);
    x = w + cos(t) * r ;
    y = h + sin(t) * r ;
    // colorMode(HSB);
    size =random(0.3, 3);
    rc = random(0, 255);
    g = random(0, 255);
    b = random(0, 255);
    col = color(rc, g, b);
    rectMode(CENTER);
    
  }
  void display() {
    
    //println(x,y,distCenter, distCenter*1.44);


    // float rLen = (float) Math.sqrt(distCenterX+distCenterY)/(w/2-margin);
    //color col1 = col+ (int) (col * rLen); //color(rLen*rc,rLen*g,rLen*b);
    //println(col,col1);
    //col= color(rLen,rLen,rLen);



    // rect(x,y,5,5);
    //circle(x,y,30);
    //ellipse(x,y,20,10);
    // line(x-2,y-2,x+2,y+2);

    //point(x, y);
    
    


  //  float r2 = map(sin(t*4), -1, 1,0 ,r);
    // rotate(0.0001);
      float r2 = map(sin(t*5), -1, 1,0 ,r);
    
    float x1  = x + cos(t) * r2 ;
    float y1 = y  + sin(t) * r2;
    // fill(colArr[(int)random(6)]);
    p.circle(x1,y1,r2);
   //textFont(pfont);
    //text("Me and You",x1,y1);
  
    
    
    
  }

  void update() {
    p.stroke(colArr[(int)random(colArr.length)]);
    // p.stroke(colArr[2]);
      p.strokeWeight(3);
   // noStroke();
    // fill(col);
    p.noFill();

    r = map(sin(t*5), -1, 1, 2, w/2-margin);
    // rotate(0.0001);
    x = w + cos(t) * r ;
    y = h + sin(t) * r ;
    x+=shiftX;
    y+=shiftY;

    //distCenterX = (x-w/2);
    //distCenterY = y-w/2;

    //distCenterX *=distCenterX;
    //distCenterY *=distCenterY;
    t+=0.008;//01;
    //println(x,y);
  }
}
