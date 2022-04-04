Walker[] walker = new Walker[10]; //initialize array of 10 walkers

PVector gravity = new PVector(0, -0.4); //downward force
PVector wind = new PVector(0.15, 0); //horizontal force

void setup()
{
  size(1280, 720, P3D); //window
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0); //center

  for (int i=0; i<10; i++)
  {
    walker[i] = new Walker(); //initalize each walker
    
    walker[i].position.x = -500; //inital x,y walker position
    walker[i].position.y = 200;

    walker[i].mass = i+1; //mass to scale formula
    walker[i].scale = walker[i].mass * 15;
    
    //RGB random colors
    walker[i].r = random(0,255);
    walker[i].g = random(0,255);
    walker[i].b = random(0, 255);
  }
}

void draw()
{
  background(0); //flush screen w/ black
  textSize(16); 
  text("/(σ ε σ)/", 0, 0); //generate text
  
  //loop for each walker
  for (int i = 0; i < 10; i++)
  {
  walker[i].update();
  walker[i].render();
  walker[i].applyForce(wind);
  walker[i].applyForce(gravity);
  walker[i].checkEdges();
  }
}
