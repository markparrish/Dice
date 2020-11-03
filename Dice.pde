int totalDots = 0;

void setup()
{
  size(400, 400);
  noLoop();
}
void draw()
{
  clear();
  for(int dieX = 25; dieX <= 350; dieX+=60)
  {
    for(int dieY = 25; dieY <= 350; dieY+=60)
    {
      Die myDie = new Die(dieX, dieY);
      myDie.show();
    }
  }
  fill(255);
  text("Total: " + totalDots, 25, 390);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int myX;
  int myY;
  int dieWidth;
  int dotSize;
  
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    dieWidth = 50;
    dotSize = 14;
  }
  
  void show()
  {
    fill(255);
    rect(myX, myY, dieWidth, dieWidth);
    drawDots(myX, myY, (int)(Math.random()*6+1));
    System.out.println("showed");
  }
  
  void drawDots(int myX, int myY, int numDots)
  {
    fill(0);
    totalDots += numDots;
    if(numDots == 1)
    {
      ellipse(myX+(dieWidth/2), myY+(dieWidth/2), dotSize, dotSize);
    }
    else if(numDots == 2)
    {
      ellipse(myX+(dieWidth/4), myY+(dieWidth/4), dotSize, dotSize);
      ellipse(myX+(3*dieWidth/4), myY+(3*dieWidth/4), dotSize, dotSize);
    }
    else if(numDots == 3)
    {
      ellipse(myX+(dieWidth/4), myY+(dieWidth/4), dotSize, dotSize);
      ellipse(myX+(dieWidth/2), myY+(dieWidth/2), dotSize, dotSize);
      ellipse(myX+(3*dieWidth/4), myY+(3*dieWidth/4), dotSize, dotSize);
    }
    else if(numDots == 4)
    {
      ellipse(myX+(dieWidth/4), myY+(dieWidth/4), dotSize, dotSize);
      ellipse(myX+(3*dieWidth/4), myY+(dieWidth/4), dotSize, dotSize);
      ellipse(myX+(dieWidth/4), myY+(3*dieWidth/4), dotSize, dotSize);
      ellipse(myX+(3*dieWidth/4), myY+(3*dieWidth/4), dotSize, dotSize);
    }
    else if(numDots == 5)
    {
      ellipse(myX+(dieWidth/4), myY+(dieWidth/4), dotSize, dotSize);
      ellipse(myX+(3*dieWidth/4), myY+(dieWidth/4), dotSize, dotSize);
      ellipse(myX+(dieWidth/2), myY+(dieWidth/2), dotSize, dotSize);
      ellipse(myX+(dieWidth/4), myY+(3*dieWidth/4), dotSize, dotSize);
      ellipse(myX+(3*dieWidth/4), myY+(3*dieWidth/4), dotSize, dotSize);
    }
    else if(numDots == 6)
    {
      ellipse(myX+(1*dieWidth/5), myY+(1*dieWidth/5), dotSize, dotSize);
      ellipse(myX+(dieWidth/5), myY+(dieWidth/2), dotSize, dotSize);
      ellipse(myX+(dieWidth/5), myY+(4*dieWidth/5), dotSize, dotSize);
      ellipse(myX+(4*dieWidth/5), myY+(1*dieWidth/5), dotSize, dotSize);
      ellipse(myX+(4*dieWidth/5), myY+(dieWidth/2), dotSize, dotSize);
      ellipse(myX+(4*dieWidth/5), myY+(4*dieWidth/5), dotSize, dotSize);
      
    }
  }
  
}
