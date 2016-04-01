int crono = 0;
int tempo;

PFont tipoLetra;


void setup() { 
  size(600, 400);
  tempo = millis();
  tipoLetra = createFont("Aileron-SemiBold-60", 30);
  textFont(tipoLetra);
  textAlign(CENTER);
  tempo = millis();
}

void draw() {


  crono = millis()-tempo; // calculo constante do tempo desde a ultima vez que se carregou no mouse
  background(0);



    fill(0, 0, 0);
    stroke(255);
    
    for (int i=0; i < 4; i++) {
     
      for (int j=0; j < 4; j++){
      fill(0);
      rect(i*(width/4), j*(height/4), width/4, height/4);
      
      
      
    } 
    fill(255,0,0);
    if(crono >= 1 && crono/1000<=4){
    rect(crono/1000*(width/4), 0, width/4, height/4);}
    if(crono/1000>4 && crono/1000 <=8){
    rect(((crono/1000)-5)*(width/4), 1*(height/4), width/4, height/4);}
    if(crono/1000>8 && crono/1000 <=12){
    rect(((crono/1000)-9)*(width/4), 2*(height/4), width/4, height/4);}
    if(crono/1000>12 && crono/1000 <=16){
    rect(((crono/1000)-13)*(width/4), 3*(height/4), width/4, height/4);}

if (crono/1000 >= 16){
  tempo = millis();}
    
    
  }



  if (mousePressed ||crono/1000 >= 16) {
    tempo = millis();
  } 
}