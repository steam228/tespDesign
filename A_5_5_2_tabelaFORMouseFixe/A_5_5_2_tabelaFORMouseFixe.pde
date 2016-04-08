int espacoX, espacoY;
int i = 0;
int j = 0;

void setup() {

  size(800, 600);
}

void draw() {
  background(0);
  stroke(255);
  espacoX = int(map(mouseX, 0, width, 150, 20));
  espacoY = int(map(mouseY, 0, height, 150, 20));


  for (i = 0; i<width; i = i+espacoX) { 
    line(i, 0, i, height);
  }

  for (j = 0; j<width; j = j+espacoY) {

    line(0, j, width, j);
  }
}