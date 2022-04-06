Walker[] walker = new Walker[10]; //initialize array of 10 walkers
//(╯° ͟°)╯┻━┻ 

void setup()
{
  size(1280, 720, P3D); //window
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0); //center
  for(int i=0; i < 10; i++)
  {
    walker[i] = new Walker(); //initalize each walker
    
    //random walker positions
    walker[i].position = new PVector(random(Window.left, Window. right),
                                     random(Window.bottom, Window.top));
    walker[i].mass = i+1;
    walker[i].scale = walker[i].mass * 10;
    
    //RGB random colors
    walker[i].r = random(0,255);
    walker[i].g = random(0,255);
    walker[i].b = random(0, 255);
  }
}

//random colors/mouse movement
void mouseMoved(){for(int i=0; i < 10; i++){walker[i].r = random(0,255);walker[i].g = random(0,255);walker[i].b = random(0, 255);}}

void draw()
{
  background(0); //flush screen w/ black
  
  //loop for each walker
  for (int i =0; i <10; i++)
  {
  //call functions for walker
  walker[i].update();
  walker[i].render();
  walker[i].checkEdges();
  
  //does attraction
  for(int j=0; j<10; j++)
  {
    walker[i].applyForce(walker[j].calculateAttraction(walker[i]));
  }
  }
}
