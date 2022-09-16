void setup(){
  size(500,500);
  background(230,150,60);
  strokeWeight(2);
}

int randStartX = (int)(Math.random()*51)+250;
int rand2StartX = (int)(Math.random()*51)-250;
int startY = 200;
int endX = 250;
int endY = 200;
boolean start = false;

void draw(){
  coffeeshop();
  if(start == true){
    stroke(235,235,235,30);
    strokeWeight(2);
    noFill();
    if((int)(Math.random()*2)){
      
    while(endY > -5){
      endX = startX + ((int)(Math.random()*19)-9);
      endY = startY - (int)(Math.random()*11); 
      line(startX,startY, endX,endY);
      startX = endX;
      startY = endY;
    } // draw lightning
  } // check if start 
}

void mousePressed(){ 
  start = true;
  startX = (int)(Math.random()*51)+205;
  startY = 200;
  endX = 250;
  endY = 200;
}

void coffeeshop(){
  noStroke(); 
  // store background
  
  // table 
  fill(#C4A484);
  rect(0,400,500,100); 
  // cup of coffee
  rect(175,200,150,200);
}
