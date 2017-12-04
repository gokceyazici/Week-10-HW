float a;
float b;
float w= 300;
float h= 150;

float xb;
float yb;

float pct = 0.05;

float x;
float y;
float dx = 1;
float dy = 1;

float accx = 0.5;
float accy = 0.8;


void setup() {
  size(700,700);
}

void draw() {
  background(#FF7300);
  a= width *0.5 - w*0.5;
  b=height *0.5-h*0.5;
  
  if(keyPressed==true) {
    //rect(x,y,w,h);
    
    textSize(50);
text(" let's start",x + w*0.09,y + h*0.50);
  xb = mouseX;
  yb = mouseY;
  
  x = x + (xb-x)*pct;
  y = y + (yb-y)*pct;
  
  if(mousePressed == false) {

}
  
    //background(255);
  pushMatrix();
  translate(mouseX-160,mouseY-240);
  //Draw rectangle
fill(#FF766A);
stroke(#030000);
rect(290,20,240,180);
fill(#D37F77);
rect(180,220,480,360);
fill(#DE9A94);
rect(210,230,450,330);
fill(#F5C3BE);
rect(230,250,430,310);
fill(#F59188);
rect(250,270,410,290);
fill(#FF7164);
rect(270,290,390,270);
fill(#F0D1CE);
rect(290,310,370,250);
fill(#F0928A);
rect(310,330,350,230);
fill(#F0D1CE);
rect(330,350,330,210);
fill(#FF766A);
rect(350,370,310,190);

//Draw packman
fill(#D1574C);
arc(600,450,80,80,0,PI+HALF_PI,PIE);
arc(500,450,80,80,0,PI+HALF_PI,PIE);
arc(400,450,80,80,0,PI+HALF_PI,PIE);

//Drawing eyes
fill(#5F312D);
stroke(#FFFDFC);
ellipse(350,70,50,50);
ellipse(470,70,50,50);

//Draw mouth
fill(#DB2B1B);
stroke(#FFFDFC);
rect(360,120,100,50);

//Drawing legs
fill(#DB2B1B);
stroke(#030000);
rect(300,585,30,30);
rect(300,630,30,30);
rect(500,585,30,30);
rect(500,630,30,30);

//Drawing arms
fill(#FF7164);
rect(670,380,150,50);
rect(20,380,150,50);
popMatrix();


  }
   x = x+accx*dx;
 y = y +accy*dy;

 if (x > width || x < 0)
 {
 accx = random(0.1,5);
 dx = dx*-1;
 }

 if ( y > height || y < 0) {
 accy = random(0.1,5);
 dy = dy*-1;
 }


 fill(0);
 noStroke();
 ellipse(x, y, 50, 50);

 x = x+accx*dx;
 y = y +accy*dy;

 if (x > width || x < 0)
 {
 accx = random(0.1,5);
 dx = dx*-1;
 }

 if ( y > height || y < 0) {
 accy = random(0.1,5);
 dy = dy*-1;
 }

}