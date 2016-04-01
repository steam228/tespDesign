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
  if (crono > 5000) { 
    fill(255, 0, 0);
    stroke(255);
    
    for (int i=0; i < 4; i=i+1) {
      for (int j=0; j < 4; j++){
      rect(i*(width/4), j*(height/4), width/4, height/4);}
    }
    
  } //condição de cor

  else {
    fill(0, 0, 0);
    stroke(255);
    
    for (int i=0; i < 4; i++) {
      for (int j=0; j < 4; j++){
      rect(i*(width/4), j*(height/4), width/4, height/4);
    } //condição de cor2
    }
    
    
  }
  // texto de modo explicativo, não é preciso fazer assim
  fill(255);
  textSize(30);
  text("crono: " + millis()/1000 + " - " + tempo/1000 +" = " + crono/1000, width/2, height/2-40);
  text("tempo global: " + millis()/1000, width/2, height/2);
  text("tempo: " + tempo/1000, width/2, height/2+40);
  textSize(80);
  text(crono/1000, width/2, height/2-80);

  if (mousePressed) {
    tempo = millis();
  } //reset ao cronometro
}