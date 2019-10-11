void setup()
{
  size(500, 600);
  noLoop();
}
void draw()
{
  background(50);
  int sum = 0;
  for (int y = 50; y <= 500; y+=50) {
    for (int x = 0; x <= 500; x+=50) { 
      Die bob  = new Die(x, y);
      bob.show();
      sum += bob.rolls;
    } 
  }
  fill(0,255,0);
  textSize(20);
  text("The sum of the dice is " + sum, 125, 570);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY, rolls;
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    roll();
  }
  void roll()
  {    
    rolls = ((int)(Math.random()*6)+1);
  }
  void show()
  {
    if (rolls == 1) {
      fill(255);
      rect(myX, myY, 50, 50);
      fill(0);
      ellipse(myX+25, myY+25, 8, 8);
    } else if (rolls == 2) {
      fill(255);
      rect(myX, myY, 50, 50);
      fill(0);
      ellipse(myX+10, myY+10, 8, 8);
      ellipse(myX+40, myY+40, 8, 8);
    } else if (rolls == 3) {
      fill(255);
      rect(myX, myY, 50, 50);
      fill(0);
      ellipse(myX+10, myY+10, 8, 8);
      ellipse(myX+25, myY+25, 8, 8);
      ellipse(myX+40, myY+40, 8, 8);
    } else if (rolls == 4) {
      fill(255);
      rect(myX, myY, 50, 50);
      fill(0);
      ellipse(myX+40, myY+10, 8, 8);
      ellipse(myX+40, myY+40, 8, 8);
      ellipse(myX+10, myY+40, 8, 8);
      ellipse(myX+10, myY+10, 8, 8);
    } else if (rolls == 5) {
      fill(255);
      rect(myX, myY, 50, 50);
      fill(0);
      ellipse(myX+10, myY+10, 8, 8);
      ellipse(myX+40, myY+40, 8, 8);
      ellipse(myX+10, myY+40, 8, 8);
      ellipse(myX+40, myY+10, 8, 8);
      ellipse(myX+25, myY+25, 8, 8);
    } else {
      fill(255);
      rect(myX, myY, 50, 50);
      fill(0);
      ellipse(myX+10, myY+10, 8, 8);
      ellipse(myX+40, myY+40, 8, 8);
      ellipse(myX+10, myY+40, 8, 8);
      ellipse(myX+40, myY+10, 8, 8);
      ellipse(myX+10, myY+25, 8, 8);
      ellipse(myX+40, myY+25, 8, 8);
    }
  }
}