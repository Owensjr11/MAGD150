class Bar {
 float x;
 float y;
 float speed = 0;
 float wideness;
 float tallness;
 
Bar(float _x, float _wideness, float _tallness){
  x=_x;
  y= 200;
  wideness=_wideness;
  tallness=_tallness;
}

void update () {
  if ((y+speed-(tallness/2)<=0) || ((y+(tallness/2)+speed)>=height)) {
    speed=0;
  }
  y += speed;
}
// this is the annoying part I had to look up as well
// thanks to some tutorials and other students did I finally figure out the
// exact way to program pong
// 
void predict (Ball _ball) {
  
  if (_ball.y<y) {
   speed=-1*(y-_ball.y);
   }
  if (_ball.y>y) {
   speed=_ball.y-y;
   } 
  if (abs(speed)>barspeed) {
    if (speed>0) {
      speed=barspeed;
  }
    if (speed<0) {
      speed=-barspeed;
  }
  }
}

void display () {
  rect(x, y, wideness, tallness);
}

}
