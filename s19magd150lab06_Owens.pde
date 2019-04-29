// Calls classes to create the paddles and ball for ong
// This code took a long time to figure out had sme help but finaly got it working

Ball BALL = new Ball(-12);
Bar RBAR = new Bar (620, 10, 70);
Bar LBAR = new Bar (30, -10, 70);

float barspeed = 5;
int rightscore = 0;
int leftscore = 0;

void setup () {
  size(650, 400);
  background(0);
  fill(255,255,255);
  rectMode(CENTER);
}

void draw() {
  background(0);
  textSize(32);
  text(leftscore, 30, 30);
  text(rightscore, 610, 30);  
  textSize(18);
  text("Press R to restart", 250, 30);
  // allows for the movement for the bar
  // As i stated had to look up some extra stuf in order to create this program but
  // im glad I did because this is by far my favorite program made thus far
  
  if (keyPressed) {
   if (key == CODED) {
     if(keyCode == UP) {
     RBAR.speed= -barspeed;
     }
     
     else if(keyCode == DOWN) {
     RBAR.speed= barspeed;
     }
   } 
   if(key == 'r') {
     barspeed=5;
     BALL = new Ball(-12);
     }
  }
    
  // checks to make sure the ball bounces of the paddles and doesnt just go away
  // or through the paddles
  
  RBAR.update () ;
  RBAR.display () ;
  
  LBAR.display () ;
  LBAR.predict (BALL) ;
  LBAR.update () ;
  
  BALL.checkcright(RBAR);
  BALL.checkcleft(LBAR);  
  BALL.update () ;
  BALL.display () ;
}
// stops the bar from being moved

void keyReleased () {
  RBAR.speed=0;
}
