void setup(){
  size(500,500);
  coffeeshop();
  strokeWeight(2);
}

int startX = 0;
int startY = 333;
int endX = 250;
int endY = 333;
boolean start = false;

void draw(){
  if(start == true){
    stroke(235,235,235,25);
    strokeWeight(2);
    noFill();
      
    while(endY > -5){
      endX = startX + ((int)(Math.random()*19)-9);
      endY = startY - ((int)(Math.random()*11)); 
      line(startX,startY, endX,endY);
      startX = endX;
      startY = endY;
    } // draw lightning
  } // check if start 
}

void keyPressed(){
  if(key == 'r'){
    coffeeshop();
    start = false;
  }
} // blow steam

void mousePressed(){ 
  System.out.println("(" + mouseX +", " + mouseY+")");
  startX = (int)(Math.random()*71)+215; // 215,285
  startY = 333;
  endX = 250;
  endY = 333;
  start = true;
}

int coffeeX = 250;
int coffeeY = 335; // 335

void coffeeshop(){
  background(#2F3133);
  noStroke(); 
// wall
  // window
  fill(240);
  rect(0,305,500,200);
  rect(260,0,40,350);
  // brick wall
  fill(#AA4A44);
  rect(300,0,200,500);
  
// table 
  fill(#C4A484);
  rect(0,350,500,300); 
  // shadows
  
// bottom book
  // bottom cover
  fill(#003314);
  beginShape(); 
  vertex(315,320);
  vertex(315,368);
  vertex(400,391);
  vertex(500,370);
  vertex(500,360);
  endShape();
  // pages
  fill(#E0D3AF);
  beginShape();
  vertex(320,320);
  vertex(320,365);
  vertex(400,386);
  vertex(500,365);
  vertex(500,320);
  endShape();
  
  strokeWeight(0.5);
  stroke(#D5B78B);
  line(400,335,400,384);
  
  line(320,363,400,384);
  line(320,361,400,382);
  line(320,359,400,380);
  line(320,357,400,378);
  line(320,355,400,376);
  line(320,353,400,374);
  line(320,351,400,372);
  line(320,349,400,370);
  line(320,347,400,368);
  line(320,345,400,366);
  line(320,343,400,364);
  line(320,341,400,362);
  line(320,339,400,360);
  line(320,337,400,358);
  line(320,335,400,356);
  line(320,333,400,354);
  line(320,331,400,352);
  line(320,329,400,350);
  line(320,327,400,348);
  line(320,325,400,346);
  line(320,323,400,344);
  line(320,321,400,342);
  line(320,319,400,340);
  line(320,317,400,338);
  line(320,315,400,336);
  
  line(400,384,500,363);
  line(400,382,500,361);
  line(400,380,500,359);
  line(400,378,500,357);
  line(400,376,500,355);
  line(400,374,500,353);
  line(400,372,500,351);
  line(400,370,500,349);
  line(400,368,500,347);
  line(400,366,500,345);
  line(400,364,500,343);
  line(400,362,500,341);
  line(400,360,500,339);
  line(400,358,500,337);
  line(400,356,500,335);
  line(400,354,500,333);
  line(400,352,500,331);
  line(400,350,500,329);
  line(400,348,500,327);
  line(400,346,500,325);
  line(400,344,500,323);
  line(400,342,500,321);
  
  line(400,340,500,319);
  line(400,338,500,317);
  line(400,336,500,315);
  line(400,334,500,313);
  
  // top cover
  fill(#003314);
  beginShape();
  vertex(400,335);
  vertex(500,320);
  vertex(375,315);
  vertex(318,320);
  endShape();
  
  
// top book
  // pages
  fill(#E0D3AF);
  beginShape();
  vertex(465,290);
  vertex(465,330);
  vertex(500,323);
  vertex(500,283);
  endShape();
  
  strokeWeight(0.5);
  stroke(#D5B78B);
  line(465,328,500,321);
  line(465,326,500,319);
  line(465,324,500,317);
  line(465,322,500,315);
  line(465,320,500,313);
  line(465,318,500,311);
  line(465,316,500,309);
  line(465,314,500,307);
  line(465,312,500,305);
  line(465,310,500,303);
  line(465,308,500,301);
  line(465,306,500,299);
  line(465,304,500,297);
  line(465,302,500,295);
  
  line(465,300,500,293);
  line(465,298,500,291);
  line(465,296,500,289);
  line(465,294,500,287);
  line(465,292,500,285);
  line(465,290,500,283);
  
  // cover
  stroke(#008b8b);
  strokeWeight(2);
    //spine
  fill(#008b8b);
  beginShape();
  vertex(310,280);
  vertex(310,320);
  vertex(465,330);
  vertex(465,290);
  vertex(310,280);
  endShape();
    //top
  beginShape();
  vertex(310,280);
  vertex(465,290);
  vertex(500,284);
  vertex(500,281);
  vertex(345,273);
  endShape();
  line(465,330,500,323);
  
  
// cat tail
  stroke(0);
  fill(0);
  beginShape();
  curveVertex(0,235);
  curveVertex(0,235);
  curveVertex(25,205);
  curveVertex(30,165);
  curveVertex(35,153);
  curveVertex(45,142);
  curveVertex(58,140);
  curveVertex(65,145); // tip of tail
  curveVertex(55,155);
  curveVertex(52,163);
  curveVertex(50,180);
  curveVertex(50,200);
  curveVertex(35,235);
  curveVertex(10,260);
  curveVertex(-1,280);
  curveVertex(-1,280);
  endShape();
  
  
// coffee
  fill(255);
  noStroke();
  ellipse(coffeeX,coffeeY,130,15);
  // r side curve
  beginShape();
  curveVertex(coffeeX-65,coffeeY); 
  curveVertex(coffeeX-65,coffeeY); 
  curveVertex(coffeeX-63,coffeeY+25); 
  curveVertex(coffeeX-60,coffeeY+35); 
  curveVertex(coffeeX-50,coffeeY+55); 
  curveVertex(coffeeX-42,coffeeY+65); 
  curveVertex(coffeeX-30,coffeeY+75); 
  curveVertex(coffeeX-30,coffeeY+75);
  endShape();
  // l side curve
  beginShape(); 
  curveVertex(coffeeX+65,coffeeY); 
  curveVertex(coffeeX+65,coffeeY); 
  curveVertex(coffeeX+63,coffeeY+25); 
  curveVertex(coffeeX+60,coffeeY+35); 
  curveVertex(coffeeX+50,coffeeY+55); 
  curveVertex(coffeeX+42,coffeeY+65); 
  curveVertex(coffeeX+30,coffeeY+75); 
  curveVertex(coffeeX+30,coffeeY+75);
  endShape();
  // middle fill
  beginShape();
  vertex(coffeeX-66,coffeeY);
  vertex(coffeeX+66,coffeeY);
  vertex(coffeeX+32,coffeeY+75);
  vertex(coffeeX-32,coffeeY+75);
  endShape();
  // bottom
  beginShape();
  vertex(coffeeX+30,coffeeY+75);
  vertex(coffeeX-30,coffeeY+75);
  vertex(coffeeX-35,coffeeY+80);
  vertex(coffeeX+35,coffeeY+80);
  endShape();
  // coffee
  fill(#704241);
  ellipse(coffeeX,coffeeY,120,10);
  // handle
  noFill();
  strokeWeight(5);
  stroke(255);
  beginShape();
  curveVertex(coffeeX+60,coffeeY+5);
  curveVertex(coffeeX+60,coffeeY+5);
  curveVertex(coffeeX+80,coffeeY+5);
  curveVertex(coffeeX+90,coffeeY+15);
  curveVertex(coffeeX+80,coffeeY+35);
  curveVertex(coffeeX+35,coffeeY+60);
  curveVertex(coffeeX+35,coffeeY+60);
  endShape(); 
  
  // pastries
  

}
