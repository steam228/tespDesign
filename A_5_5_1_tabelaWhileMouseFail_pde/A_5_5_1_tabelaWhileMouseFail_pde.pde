int espacoX, espacoY;
int i = 0;
int j = 0;

void setup(){

size(800,600);

}

void draw(){
  
  espacoX = int(map(mouseX, 0,width, 150,20));
  espacoY = int(map(mouseY, 0,height, 150,20));

  
while ( i < width) {
  
  line(i, 0, i, height);
  i = i+espacoX;
} 
while ( j < height) {
  
  line(0, j, width, j);
  j = j+espacoY;
} 


}