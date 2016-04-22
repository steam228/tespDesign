//hello World Watch
//the most basic watch function

//variáveis das dimensões base da elipse
float centroX, centroY;
float raio;
float pXi, pYi, pXf, pYf;
float nMin = 60;
float nHours = 12;
float posHour;
float angle;
float tamEsc;
float anglePoint; //
float pX, pY;

//opcional Caracteristicas Gráficas Base

float strokeSec = 0.6;
float strokeMin = 1.1;
float strokeHour = 2.2;


void setup() {
  size(800, 600);

  centroX = width/2;
  centroY = height/2;
  raio = height/3;

  stroke(255);
  noFill();
}


void draw() {
  background(0);
  ellipse(centroX, centroY, raio*2, raio*2);
  strokeWeight(strokeMin);
  for (int i = 0; i<nMin; i++) {
    if (i == 0 || i%5 == 0) {
      tamEsc = 20;
    } else {
      tamEsc = 40;
    }
    angle = (TWO_PI/nMin)*i;
    pXi = centroX + (raio-height/tamEsc) * cos(angle);
    pYi = centroY + (raio-height/tamEsc)* sin(angle);
    pXf = centroX + raio * cos(angle);
    pYf = centroY + raio * sin(angle);
    line(pXi, pYi, pXf, pYf);
  }
  
  strokeWeight(strokeSec);
  //ponteiro dos Segundos
  anglePoint = second()*(TWO_PI/nMin)-PI/2;
  pX = centroX + raio/1.2 * cos(anglePoint);
  pY = centroY + raio/1.2 * sin(anglePoint);
  line(centroX, centroY, pX, pY);
  
  strokeWeight(strokeMin);
  //ponteiro dos minutos
  anglePoint = minute()*(TWO_PI/nMin)-PI/2;
  pX = centroX + raio/1.5 * cos(anglePoint);
  pY = centroY + raio/1.5 * sin(anglePoint);
  line(centroX, centroY, pX, pY);
  
  
  strokeWeight(strokeHour);
  //ponteiro das horas
  if (hour() <12) {
    posHour = map(hour(), 0, 12, 0, 60); 
    anglePoint = posHour*(TWO_PI/nMin)-PI/2;
    pX = centroX + raio/2.3 * cos(anglePoint);
    pY = centroY + raio/2.3 * sin(anglePoint);
    line(centroX, centroY, pX, pY);
  }
  if (hour() >=12) {
    posHour = (map(hour()-12, 0, 12, 0, 60)); 
    anglePoint = posHour*(TWO_PI/nMin)-PI/2;
    pX = centroX + raio/2.3 * cos(anglePoint);
    pY = centroY + raio/2.3 * sin(anglePoint);
    line(centroX, centroY, pX, pY);
  }
}