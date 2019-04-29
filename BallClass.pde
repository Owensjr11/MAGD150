// by far the hardest paprt to code in my honest opinion had to look up alot of things
// because the bal just didnt want to work but finally managed to get it all situated
// asked people to help becuse it just didnt work... That being said some of this 
// code was found with help 
class Ball {
 float x;
 float y;
 float xspeed;
 float yspeed; 
 float r;
 
 
 float shift = width/2; 
 
Ball(float speedin) {
  x = 250;
  y = 250;
  xspeed = random((0.6*speedin), (0.75*speedin));
  yspeed = speedin-xspeed;
  r=10;
}

void update () {
  if ( ((x+r)<width) && ((x-r)>0) )
  x += xspeed;
  else {
  xspeed=0;
  yspeed=0;
  barspeed=0;
  RBAR.y=200;
  LBAR.y=200;
    if (x>600) {
      leftscore ++;
      x=325;
      y=200;
    }
    else {
    rightscore++;
      x=325;
      y=200;    
    }
  }
  
  if ( ((y+r)<height) && ((y-r)>0) )
  y += yspeed;
  else {
  y -= yspeed;
  yspeed = -yspeed;
  }
  
}

void checkcright(Bar _bar) {
 if ( (x+xspeed+(r/2)>=_bar.x-(_bar.wideness/2)) && (y+yspeed>=_bar.y-(_bar.tallness/2)) && (y+yspeed<=_bar.y+(_bar.tallness/2)) ) {
  x -= xspeed;
  xspeed= -xspeed;
  yspeed= (((y-_bar.y)/(_bar.tallness/2))*barspeed)+(barspeed*0.75);
 }
}
 
void checkcleft(Bar _bar) {
 if ( (x+xspeed-(r/2)<=_bar.x+(_bar.wideness/2)) && (y+yspeed>=_bar.y-(_bar.tallness/2)) && (y+yspeed<=_bar.y+(_bar.tallness/2)) ) {
  x -= xspeed;
  xspeed= -xspeed;
  yspeed= (((y-_bar.y)/(_bar.tallness/2))*barspeed)+(barspeed/2);
} 
 
}


void display () {
  ellipse (x, y, r, r);
}

}
