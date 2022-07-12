  float t;
  float grid = 4;
  float margin= 130;
  color bg = color(15,20,30);
 color[] colArr = {#EDFF33, #ADD9FF, #A3D9CF, #025951, #A6367B, #F6CA07, #E85959 ,#640505, #83BF32, #7832BF};
 Agent a ;  
 PGraphics p;
  void setup() {
  size(888,888,P2D);
  background(colArr[0]);

    p = createGraphics(2144, 2144, P2D);
  
   a = new Agent(p.width/2,p.height/2-100,100);
  
  //noLoop();
  }
  
  void draw() {
  
   // if(t>50){
   //   return;
   // }
   //;
   //noFill();
   //stroke(255);
   //background(bg);

   //for (float i=margin;i<width-margin;i+=grid) {
   //  for (float j=margin;j<height-margin;j+=grid) {
   //       int colArrNum = (int) random(7);
   //stroke(colArr[colArrNum]);
   //strokeWeight(3);
   
   //for( k=0;k<5;k++){
   //    float x1= -random(d);
   //float y1= -random(d);
   //float x2= -random(d);
   //float y2= random(d);
   //float x3= random(d);
   //float y3= random(d);
   //float x4= random(d);
   //float y4= -random(d);
    //for(int i=0;i<600;i++){
       //pushMatrix();
    //  translate(i,j);
    
     
    // quad(x1,y1,x2,y2,x3,y3,x4,y4);
    //strokeWeight(10);
   // point(random(width/4),height/2);
  // p.background(bg);
//  p.rotateY(t);
//for(int i=0;i<600;i++){
  //     pushMatrix();
  //p.smooth();
         p.beginDraw();
     a.update();
     a.display();
     p.endDraw();
    
    // popMatrix();
//}
   // }
     
     //}
     //}
     
 //}
 
   t++;
   println(t);
    if(t>1200){
        text("Done",500,400) ;
        noLoop();
        
      }else{
           text("Rendering...",400,400) ;
      }
    if(t==1200) {
     
    // rotate(t); 
   //  a = new Agent(width/2,height/2,110);
   p.save("C:/KridaKshetra/DynamicArts/PathTracingAndFonts/PathTracing/HighRes.bmp"); 
   
   
   
     //redraw(); 
  }
  //  delay(1000);
     //save("C:\\KridaKshetra\\DynamicArts\\VeraModaInspired\\quads\\"+t+"img.png");
  }
  
  void keyPressed() {
   if(key == ' '&&t>600) {
    // rotate(t); 
   //  a = new Agent(width/2,height/2,110);
    p.save("C:/KridaKshetra/DynamicArts/PathTracingAndFonts/PathTracing/Test.jpeg"); 
     //redraw(); 
  }
  }
