// variáveis
float angle;
float pX, pY;
//constantes
int raio, centroX, centroY;
int numDiv = 60;

void setup(){
  size(800, 600);
  background (0);
  stroke(255);
  noFill();
  
  raio = height/3;
  centroX = width/2;
  centroY = height/2;
  
}

void draw() {
  background (0);
  ellipse(centroX, centroY, raio*2, raio*2); 
  numDiv = second();
  for (int i = 1; i <= numDiv; i++){
    angle = (TWO_PI/numDiv)*i;
    pX =  centroX + raio * cos(angle);
    pY =  centroY + raio * sin(angle);
    

     line (centroX, centroY, pX, pY);
    
    
  }  
}