Walker[] walker = new Walker[10]; //initialize array of 10 walkers
Liquid liquid = new Liquid(0, -100, Window.right, Window.bottom, 0.1f); //initialize new liquid

void setup()
{
  size(1280, 720, P3D); //window
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0); //center
  
  for(int i=0; i < 10; i++)
  {
    walker[i] = new Walker(); //initalize each walker
 
    walker[i].position.x = 300 - (i * 100); //inital x,y walker position
    walker[i].position.y = 300;
    walker[i].mass = i+1;
    walker[i].scale = walker[i].mass * 20;
    
    //RGB random colors
    walker[i].r = random(0, 255);
    walker[i].g = random(0, 255);
    walker[i].b = random(0, 0);
  }
}

void draw()
{
  background(255); //flush screen w/ white
  liquid.render();
  
  //loop for each walker
  for (int i = 0; i < 10; i++)
  {
  float c = 0.1f;
  float normal = 1;
  float frictionMagnitude = c * normal;
  PVector friction = walker[i].velocity.copy();
  // Friction = -uNv
  friction.mult(-1).normalize().mult(frictionMagnitude);
  walker[i].applyForce(friction); //apply friction to each walker
  
  PVector gravity = new PVector(0, -0.15f * walker[i].mass);
  walker[i].applyForce(gravity); //apply gravity to each walker
  
  PVector wind = new PVector(0.1, 0);
  walker[i].applyForce(wind); //apply wind to each walker
  
  walker[i].update();
  walker[i].render();
  walker[i].checkEdges();
  
  //checks liquid-walker collision
  if(liquid.isCollidingWith(walker[i]))
  {
    println("Colliding");
    PVector dragForce = liquid.calculateDragForce(walker[i]);
    walker[i].applyForce(dragForce); //apply drag to each walker
  }
  
  //prevent walker from noclipping into borders of window
  if (walker[i].position.y <= Window.bottom)
  {
   walker[i].position.y = Window.bottom;
  }
  if (walker[i].position.x >= Window.right)
  {
   walker[i].position.x = Window.right;
  }
  }
}
