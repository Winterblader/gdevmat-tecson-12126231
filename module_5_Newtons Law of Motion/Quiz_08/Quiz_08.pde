int count = 10; //number of walkers
Walker walker = new Walker(); //walker instance

PVector gravity = new PVector(0, -0.4); //y-axis force
PVector wind = new PVector(0.15, 0); //x-axis force

void setup()
{
  size(1280, 720, P3D); //screen resolution
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0); //center

  //initialize walker starting position
  walker.position.x = -500;
  walker.position.y = 200;
  
  //initialize scale to mass ratio
  walker.mass = 10;
  walker.scale = walker.mass * 15;
  
  //create an instance of 10 walkers
  Walker[] walker = new Walker[count];
  for (int i = 0; i < count; i++)
  {
    float R = random(0, 255);
    float G = random(0, 255);
    float B = random(0, 255);
    fill (R, G, B); //random fill per walker
    
    walker[i] = new Walker(); //spawn walker
    walker[i].mass++; //should make different scales for each walker???
  }
}

void draw()
{
  background(0); //flush screen w/black
  
  walker.update();
  walker.render();
  walker.applyForce(wind); //wind force applied
  walker.applyForce(gravity); //gravity applied
  walker.checkEdges();
}
