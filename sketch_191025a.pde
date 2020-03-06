

void setup(){
  size(600, 600);
  stroke(255);
  strokeWeight(1);
  translate(width/2, height);
  frameRate(120);
  background(0);
  
}

void draw(){
  background(0);
   translate(width/2, height);
   branch(200, mouseX, mouseX);
  
}

void branch(float len, float x, float y){
  strokeWeight(len/20);
  line(0,0,0, -len);
  translate(0,-len);
  
  if(len > 2){
  
  pushMatrix();
  rotate(radians(x));
  branch(len*0.64, x, y);
  popMatrix();
  pushMatrix();
  rotate(-radians(y));
  branch(len*0.64, x ,y);
  popMatrix();
  }
}
  void mousePressed(){
   
  }
