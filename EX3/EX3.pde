PImage Background; 
import gifAnimation.*; 

Gif minchange;

float rot1=0;
float rot2=0;
float longer=105;
float shorter=180;
int lastSecond = 0;
int lastMinute = 0;

void setup(){
  size(600,600);
  
  Background=loadImage("clock.png");
  Background.resize(500,500);
  
  minchange=new Gif(this,"1.gif");
  minchange.play();
}

void  draw(){
  background(0);
 image(Background,50,50);
 
 int sec=second();
 int min=minute();
 
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(rot1));
  ellipse(longer,0, 40,40);
  popMatrix();
  
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(rot2));
  ellipse(shorter, 0, 40,40);
  popMatrix();
  
  if (sec != lastSecond) {
    rot1 += 6;
    lastSecond =sec;
    minchange.jump(1);
  }
  
  if (min!= lastMinute) {
    rot2 += 6;  
    lastMinute =min;
    image(minchange,0,0,200,150);    // for every minutes, there will be a very fast gif pop up... dont blink!
  }

}
