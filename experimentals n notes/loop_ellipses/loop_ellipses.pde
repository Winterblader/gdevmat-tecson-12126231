void setup() 
{
  size(300, 300);
}

void draw() 
{
  background(100);
  
  //loops to create ellipses from 75 thickness to 225 by adding values of 75)
  for (int circleX = 75; circleX <= 225; circleX += 75) 
  {
    ellipse(circleX, 150, 50, 50);
  }
}
