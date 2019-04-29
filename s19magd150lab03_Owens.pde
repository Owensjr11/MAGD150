boolean flipFlopper; 

int red; 
int green;
int blue;

float deltaMouseX; // default value is 0.0
float deltaMouseY;

float circleX;
float xspeed = 3;

float w = 30;
float h = 30;

float a = dist(width/2,height/2,mouseX,mouseY);
int x = max(100,364);
int y = min(-98,63);

void setup() {
  size(420, 420);
  circleX = 0;
  
  surface.setResizable(true);
  background(32);
}

void draw() {
 background(32);
    
  red = (red + 1) % 256;
  green = (green + 5) % 256;
  blue = (blue + 2) % 256;
  fill(red, green, blue);

  w = (w + 1) % (height / 3.5);
  h = (h + 1) % (height / 3.5);

  ellipse(130,100,45,45);
  ellipse(190,230,75,75);
  ellipse(215,140,60,60);
  ellipse(160,300,30,30);
  ellipse(265,315,80,80);
  ellipse(300,215,55,55);
  ellipse(60,350,60,60);
  ellipse(300,35,65,65);
  ellipse(mouseX, mouseY, w, h);
  ellipse(circleX,height/2,32,32);
  
  circleX = circleX + xspeed;
  
  if (circleX > width || circleX < 0) {
    xspeed = xspeed * -1;
  }
  println("(" + mouseX + ", " + mouseY + ")");
  println(a);
  println(frameCount);
  println(x);
  println(y);
  
  deltaMouseX = mouseX - pmouseX;
  deltaMouseY = mouseY - pmouseY;

  println("delta: (" + deltaMouseX + ", " + deltaMouseY + ")");

  flipFlopper = !flipFlopper;
}
