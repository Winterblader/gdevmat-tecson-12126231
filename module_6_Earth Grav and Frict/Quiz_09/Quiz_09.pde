Walker[] walker = new Walker[8]; //initialize array of 8 walkers

void setup()
{
  size(1280, 720, P3D); //window
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0); //center
  
  for (int i=0; i<8; i++)
  {
    walker[i] = new Walker(); //initalize each walker
 
    walker[i].position.x = -500; //inital x,y walker position
    walker[i].position.y = 300 - (i * 70);
    walker[i].mass = i+1;
    walker[i].scale = walker[i].mass * 10;
    
    //RGB random colors
    walker[i].r = random(0,255);
    walker[i].g = random(0,255);
    walker[i].b = random(0, 255);
  }
}

void mousePressed()
{
  //for reset
  for(int i=0; i<8; i++)
  {
  walker[i].position.x = -500;
  walker[i].acceleration.mult(0);
  walker[i].mew = 0.01f;
  }
}

void draw()
{
  background(0); //flush screen w/ black
  textSize(16); 
  text("/(σ ε σ)/", 0, 0); //generate text
  
  //loop for each walker
  for (int i = 0; i < 8; i++)
  {
  //friction = -1 * new * N * v
  if(walker[i].position.x >= 0)
  {
   walker[i].mew = 0.4f; 
  }
  float normal = 1;
  float frictionMagnitude = walker[i].mew * normal;
  PVector friction = walker[i].velocity.copy(); //copies current velocity of walker
  friction.mult(-1);
  friction.normalize();
  friction.mult(frictionMagnitude);
  walker[i].applyForce(friction); //apply friction 
  
  walker[i].update();
  walker[i].render();
  }
}
