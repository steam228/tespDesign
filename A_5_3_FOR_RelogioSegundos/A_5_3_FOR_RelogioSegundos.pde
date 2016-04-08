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
  textMode(CENTER);
  textSize(48);
  
  raio = height/3;
  centroX = width/2;
  centroY = height/2;
  
}

void draw() {
  background (0);
  ellipse(centroX, centroY, raio*2, raio*2); 
  //numDiv = int(map(mouseX,0,width,0,60));
  text(second(),width/2,height/2-(height/3+50));
  for (int i = 1; i <= numDiv; i++){
    angle = (TWO_PI/numDiv)*i;
    pX =  centroX + raio * cos(angle);
    pY =  centroY + raio * sin(angle);
    
    if (second() == i) { 
      stroke((map(second(),60,0,0,255)),0,(map(second(),0,60,0,255)));
      strokeWeight(6);
     }
    else {
      stroke(255);
      strokeWeight(0.6);
     
    }
     line (centroX, centroY, pX, pY);
    
    
  }  
}