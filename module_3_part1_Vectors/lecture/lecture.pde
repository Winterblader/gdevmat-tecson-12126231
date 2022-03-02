void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
}

//declare position and movement
//Pvector doesnt need to declare four separate variables in order to have more bouncy ballz
PVector position = new PVector();
PVector speed = new PVector(5, 8);

void draw()
{
  background(255); //flush screen w/ white bg
  
  //add speed to current position
  position.add(speed);
  
  //conditions for bouncing
  if ((position.x > Window.right) || (position.x < Window.left))
  {
   speed.x *= -1; 
  }
  if ((position.y > Window.top) || (position.y < Window.bottom))
  {
   speed.y *= -1; 
  }
  
  //make it move first before  - note
  //render thy circol
  fill(182, 52, 100);
  circle(position.x, position.y, 50);
  
}
