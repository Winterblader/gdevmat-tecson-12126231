Walker[] walker = new Walker[10]; //initialize array of 10 walkers

void setup()
{
  size(1280, 720, P3D); //window
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0); //center
  for(int i=0; i < 10; i++)
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

void draw()
{
  background(0); //flush screen w/ black
  
  //loop for each walker
  for (int i = 0; i < 8; i++)
  {
  walker[i].update();
  walker[i].render();
  walker[i].checkEdges();
  }
}
