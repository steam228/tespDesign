//LOGO CLN
colorMode(RGB);
background(80,40,20);

size(800,600);
int n = height/6;

stroke(200);
noFill();
strokeWeight(1);
fill(150,70,40);
rect(width/2-n/2,height/2-n/2,n,n);

strokeWeight(0.3);
noFill();
triangle(width/2-n/2, height/2-n/2, width/2+n/2, height/2-n/2, width/2,height/2-n);

strokeWeight(4);
line(width/2-n/2, height/2-n/2,width/2+n/2, height/2+n/2);
strokeWeight(1);
line ( width/2+n/2, height/2-n/2,width/2-n/2, height/2+n/2);

rectMode(CENTER); //este modo centra o rectangulo

fill(#EA1313,200);
rect(width/2-n/2,height/2-n/2,n,n);