void setup(){
  size(500,500);
  background(230,150,60);
  strokeWeight(2);
}

int startX = (int)(Math.random()*31)+220;
int startY = 200;
int endX = 250;
int endY = 200;

void draw(){
  stroke(235,235,235,50);
  while(endY > -5){
    endX = startX + (int)(Math.random()*18)-9;
    endY = startY - (int)(Math.random()*10); 
    line(startX,startY, endX,endY);
    startX = endX;
    startY = endY;
  }
}

void mousePressed(){
  startX = 250;
  startY = 200;
  endX = 250;
  endY = 200;
}

