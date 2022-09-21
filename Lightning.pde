int a = (int) (Math.random()*270);
int b = 0;
int x = (int) (Math.random()*10) + a-5;
int y = (int) (Math.random()*10) + b;
boolean zap = false;
void setup()
{
  size(300, 300);
  frameRate(80);
  background(0, 0, 0);
}//end setup
void draw()
{
  //clouds
  fill(100,20,20);
  ellipse(200,10, 150, 100);
  ellipse(50,25, 200, 125);
  noStroke();
  fill(75,69,69);
  ellipse(40, 15, 200, 125);
  ellipse(190, 0, 150, 100);
  
  //bolts
  if (zap == false && mousePressed == true) {
    zap = true;
  } else if (zap == true) {
    strokeWeight(2);
    stroke(255, 0, 0);
    line(a, b, x, y);
    a = x;
    b = y;
    x = (int) (Math.random()*10) +x-5;
    y = (int) (Math.random()*10) + y;
    fill(0, 0, 0, 5);
    rect(0, 0, 300, 300);
  }
  if (b>300) {
    a = (int) (Math.random()*300);
    b = 0;
    x = (int) (Math.random()*10) + a-5;
    y = (int) (Math.random()*10) + b;
    zap = false;
  }
  
}// end draw
