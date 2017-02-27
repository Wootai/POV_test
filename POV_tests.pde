PVector position;
PVector point;
PVector toPoint;
PVector povLeft;
PVector povRight;

float view;


void setup(){
  
  position = new PVector(600, 400);
  point = new PVector(600, 200);
  povLeft = new PVector(400, 200);
  povRight = new PVector(800, 200);
  toPoint = new PVector();
  
  view = PVector.dot(position, point);
  
  
  size(1200, 800);
  
}

void draw(){
  
  
  //println(view);
 // println(position.mag(), point.mag());
  
  ellipse(position.x, position.y, 200, 200);
  ellipse(point.x, point.y, 20, 20);
  line(position.x, position.y, povLeft.x, povLeft.y);
  line(position.x, position.y, povRight.x, povRight.y);
  
  toPoint.setMag(dist(point.x, point.y, position.x, position.y));
  println(PVector.angleBetween(povLeft, povRight));
  println(QUARTER_PI);
  
   
  
  
}