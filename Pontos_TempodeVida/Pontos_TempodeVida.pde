
float coordX;
float coordY;

void setup(){
  
frameRate(120);
size(800,600);
background(0);
noStroke();
fill(255);
coordX = random(width);
coordY = random(height);

}




void draw(){
fill(10,20);
rect(0,0,width,height); 
coordX = random(width);
coordY = random(height); 
fill(255);
ellipse(coordX,coordY,4,4);


}