//Faz um stickman Paramétrico
//e proporcional ao ecrã
// preenche os espaços com _____
//depois tenta fazer outros desenhos 
//com outros tipos de linha, sozinho!
//
//por André Rocha

float pX, pY;
float prop, mexe;


void setup(){
size(800,600);


stroke(255);
strokeWeight(2);
noFill();

}

void draw(){
  
background(0);
pX = mouseX;
pY = mouseY;
prop = map(mouseX,0,width,height/6,height/12);
mexe = map(mouseX,0,width,0,prop*4);
boneco(prop,mexe);

}



void boneco(float n, float upa){

ellipse(pX,pY,n,n); //cabeça
line(pX,pY+(n/2),pX,pY+(n/2)+n*2); //tronco
//pernas
line(pX,pY+(n/2)+n*2,pX-n*2,pY+(n/2)+n*2+n+upa/2);
line(pX,pY+(n/2)+n*2,pX+n*2,pY+(n/2)+n*2+n+upa/2);

//braços
line(pX,pY+(n/2)+n,pX-n*2,pY+(n/2)+upa);
line(pX,pY+(n/2)+n,pX+n*2,pY+(n/2)+upa);


}