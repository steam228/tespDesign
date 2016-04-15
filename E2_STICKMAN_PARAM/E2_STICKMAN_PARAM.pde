//Faz um stickman Paramétrico
//e proporcional ao ecrã
// preenche os espaços com _____
//depois tenta fazer outros desenhos 
//com outros tipos de linha, sozinho!
//
//por André Rocha

float pX, pY;
float n;


void setup(){
size(800,600);

n = height/6;

}

void draw(){
background(0);
stroke(255);
strokeWeight(2);
noFill();
  
pX = mouseX;
pY = mouseY;
  
ellipse(pX,pY,n,n); //cabeça
line(pX,pY+(n/2),pX,pY+(n/2)+n*2); //tronco
//pernas
line(____,____,____,____);
line(____,____,____,____);

//braços
line(pX,pY+(n/2)+n,____,____);
line(pX,pY+(n/2)+n,____,____);



}