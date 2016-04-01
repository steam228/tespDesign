// Lei da simplicidade inventada

int crono = 0;
int crono2 = 0;
int tempo;
int tempo2;
float vermelho;
boolean luz;
String textinho;
int pisca = 200;

PFont f;

void setup() {

  size(600, 400);

  background(0);

  f = createFont("AkzidenzGroteskBQ-XBold-48.vlw", 48);
  textFont(f);
  textAlign(CENTER);
  tempo = millis();
}


void draw() {


  if (crono > 5000) {
    vermelho = map(crono, 5000, 10000, 20, 255);
    
    
    if (crono <7500){
    background(vermelho, 0, 0);
    tempo2 = millis();
    }
    if (crono >= 7500){
    crono2 = millis()-tempo2;
      if(crono2<pisca){
      background(vermelho, 0, 0);}
      if(crono2>=pisca){
      background(0, 0, 0);}
      if(crono2>pisca+pisca){
      tempo2 = millis();}
    }

    if (crono > 10300) {
      tempo = millis();
    }
    
  } else {
    vermelho = map(crono, 0, 5000, 255, 20);
    background(vermelho, 0, 0);
  }

  crono = millis()-tempo;

  if (mousePressed) {

    tempo = millis();
  }

  text(crono/1000, width/2, height/2);
  //text(millis()/1000,width/2,(height/2)+60);
}