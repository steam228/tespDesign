//LOGO CLN

background(0);

size(800,600);
int n = height/6;

stroke(255);
noFill();
strokeWeight(1);

rect(width/2-n/2,height/2-n/2,n,n);
triangle(width/2-n/2, height/2-n/2, width/2+n/2, height/2-n/2, width/2,height/2-n);
line(width/2-n/2, height/2-n/2,width/2+n/2, height/2+n/2);
line ( width/2+n/2, height/2-n/2,width/2-n/2, height/2+n/2);