float x;
float y;
float angle;
float deltaAngle;
color c;
void setup() {
  size(400,400);
  y = random(height);
  x = -width*.25;
  angle=0;
  deltaAngle=0.05;
  c=color(255);
  rectMode(CENTER);
  background(255);
  smooth();
}

void draw() {
  fill(255,30);
  rect(width/2,height/2,width,height);
  c = color(255,map(mouseY,0,height,0,255),0);
  fill(c);
  //background(128);
  if (mousePressed) {
    x = mouseX;
    deltaAngle=deltaAngle*0.7;
  }
  else 
    if (x<width) {
      x++;
      angle+=deltaAngle;
    }
    else {
      y = random(height);
      x = -width*.25;
      deltaAngle=random(-0.1,0.1);
      //c=color(random(150,255),0,0);
    }
        if(keyPressed == true) {
           background(0);
    }
        else {
          background(255);
        }

  pushMatrix();  
  translate(x,y);
  rotate(angle);
  float size = map(mouseX,0,width/2,0.5,1);
  rect(0,0,width*0.4*size,height*0.25*size);
  popMatrix();
  
  fill(#D2B48C);
  ellipse(200,200,215,215);
  
  fill(#FFFF00);
  ellipse(200,200,200,200);
   
   fill(#FF0000);
   ellipse(200,150,25,25); 
   
   fill(#FF0000);
   ellipse(200,250,25,25);
   
   fill(#FF0000);
   ellipse(150,200,25,25);
   
   fill(#FF0000);
   ellipse(200,200,25,25);
   
   fill(#FF0000);
   ellipse(250,200,25,25);
   
   fill(#FF0000);
   ellipse(150,160,25,25);
   
   fill(#FF0000);
   ellipse(150,240,25,25);
   
   fill(#FF0000);
   ellipse(250,160,25,25);
   
   fill(#FF0000);
   ellipse(250,240,25,25);
   
   fill(#FF0000);
   ellipse(200,285,25,25);
   
   fill(#FF0000);
   ellipse(200,115,25,25);

for (int i = 0; i < 40; i = i+1) {
  line(30, i, 80, i);
}
}
 
