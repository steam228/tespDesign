
float coordX;
float coordY;
float prevCoordX;
float prevCoordY;

float angle;
float pen = 2;
float limPen = 50;

float passo = 0.3;



void setup(){
  
colorMode(RGB);
frameRate(250);
size(800,600);
background(0);
noStroke();
fill(20,20,random(255));
angle = random(TWO_PI);

coordX = random(width);
coordY = random(height);

ellipse(coordX,coordY,pen,pen);

prevCoordX = coordX;
prevCoordY = coordY;

}


void draw(){

  
smooth();
coordX = prevCoordX + (pen* passo* cos(angle));
coordY = prevCoordY + (pen* passo* sin(angle));

if ((coordX <= 0 || coordX >= width)|| (coordY <= 0 || coordY>= height)){
  fill(10,10,10,20);  
  rect(0,0,width,height);
  angle = random(TWO_PI);
  fill(20,20,random(255));
  coordX = prevCoordX + (pen* passo * cos(angle));
  coordY = prevCoordY + (pen* passo * sin(angle));
  pen = pen+1;
  
  if(pen > limPen){
    
    pen = 2;
  
}
}



ellipse(coordX,coordY,pen,pen);

prevCoordX = coordX;
prevCoordY = coordY;



}