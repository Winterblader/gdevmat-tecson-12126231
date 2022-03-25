int count = 100; //number of walkers

//new x,y position per walker
float[] x = new float[count];
float[] y = new float[count];

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  //spawn walkers-ish randomly within screen
  for (int i = 0; i < 100; i++)
  {
    x[i] = random(-width/2, width/2);
    y[i] = random(-height/2, height/2);
  }
}

PVector mousePos()
{
  float x = mouseX - Window.windowWidth;
  float y = -(mouseY - Window.windowHeight);
  return new PVector (x, y);
}

/* Vector Motion 101
  1. Add velocity to position
  2. Draw the object at position */

void draw()
{
  background(0, 0, 0); //flush screen w/ black
  
  PVector mouse = mousePos();
  //normalize mouse vectors
  mouse.normalize().mult(4);
  
  //checks for mouse pos and move towards mouse direction
  for(int i = 0; i < count; i++)
  {
    if(x[i] != mouse.x)
    {
     x[i] += mouse.x;
    }
    if(y[i] != mouse.y)
    {
     y[i] += mouse.y;
    }
    
    fill(0, 255, 0); //green fill
    circle(x[i], y[i], random(5, 10)); //spawn circle
  }
  //(╯° ͟°)╯┻━┻ w h y

}
