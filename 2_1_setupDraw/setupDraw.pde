int raio = 20;

void setup(){
size(800,600);
background(0);

}


void draw(){
  
background(0); //podem comentar ou descomentar e ver a diferença
fill(255);
noStroke();
rectMode(CENTER);
rect(mouseX,height-20,raio*5,raio);



}