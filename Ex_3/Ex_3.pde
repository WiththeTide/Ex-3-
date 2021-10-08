float rot1 = 0;
float rot2 = 0;
float lengthHand1 = 200;
float lengthHand2 = 100;
int lastSecond = 0;
int lastMinute = 0;

PImage clock;

void setup() {
  size(800, 600, P2D);  
  clock=loadImage("clock.png");
  clock.resize(1000,800);
  background(0);  
}

void draw() {
  imageMode(CENTER);
  image(clock, width/2,height/2);
  
  
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(rot1));
  ellipse(lengthHand1, 0, 10,10);
  popMatrix();
  
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(rot2));
  ellipse(lengthHand2, 0, 10,10);
  popMatrix();
  
  int s = second();
  int m = minute();
  
  if (s != lastSecond) {
    rot1 += 6;
    lastSecond = s;
  }
  
  if (m != lastMinute) {
    rot2 += 6;  
    lastMinute = m;
  }
}
