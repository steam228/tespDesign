float velocidade = 5;
float posicao = 5;
int dir = 1; 
int rasto;

void setup(){
size (800,600);  

stroke(255);
strokeWeight(2);
noFill();


}


void draw(){
  
//background(0);

fill (1,20);
rect(0,0,width,height);
noFill();
carro(posicao);
posicao = deslocaCarro(posicao);

}


void carro(float posX){
int sizeX = height/30;
int sizeY = height/60;

rect(posX , height/2 , sizeX ,sizeY);
}



float deslocaCarro(float posX){

if (posX >= width || posX <= 0){ 
  dir = dir * -1;
}
posX = posX+velocidade*dir;

return posX;

}