
float coordX;
float coordY;
float prevCoordX;
float prevCoordY;

float angle;
float pen = 6;
float passo = 0.2;

void setup(){
  
frameRate(120);
size(800,600);
background(0);
noStroke();
fill(255);
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
  angle = random(TWO_PI);
  coordX = prevCoordX + (pen* passo * cos(angle));
  coordY = prevCoordY + (pen* passo * sin(angle));
}

ellipse(coordX,coordY,pen,pen);

prevCoordX = coordX;
prevCoordY = coordY;



}