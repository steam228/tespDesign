int raio, centroX, centroY;
float angle = 0;
int numDiv = 16;

float pX, pY;

void setup(){
  size(800, 600);
  background (0);
  stroke(255);
  noFill();
  
  raio = height/6;
  centroX = width/2;
  centroY = height/2;
}

void draw() {
  background (0);
  ellipse(centroX, centroY, raio*2, raio*2);
  
  for (int i = 0; i <= numDiv; i++){
  
  pX =  centroX+raio*sin((TWO_PI/numDiv)*i);
  pY =  centroY+raio*cos((TWO_PI/numDiv)*i);
  line (centroX, centroY, pX, pY);
}
  
  
  
}