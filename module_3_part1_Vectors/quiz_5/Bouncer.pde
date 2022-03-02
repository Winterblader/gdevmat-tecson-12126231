class Bouncer //intialize ball bouncer class
{
  //declare ball position and speed
PVector position = new PVector();
PVector speed = new PVector(10, 10);
 
 void render()
 {
   //randomized colors
   int R = (int)random(0,255);
   int G = (int)random(0,255);
   int B = (int)random(0,255);
   int A = (int)random(50,100);
   fill(color(R,G,B), A);
   circle(position.x, position.y, 50); //render circle
 }
 
 //function for simulating ball bounce
 void moveAndBounce()
 {
   //adds speed to current position of ball
   position.add(speed);
   
   //conditions for bouncing the ball
  if ((position.x > Window.right) || (position.x < Window.left))
  {
   speed.x *= -1; 
  }
  if ((position.y > Window.top) || (position.y < Window.bottom))
  {
   speed.y *= -1; 
  }
 }
}
