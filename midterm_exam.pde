PGraphics circles; //render displayed matter

void setup()
{
 size(1280, 720, P3D); //window size
 camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0); //centered camera
}

 int[] Matter = new int[100];
 Blackhole blackhole = new Blackhole(); //spawn target blackhole
 Matter[] matter = new Matter[100]; //spawn 100 matter
 
 public PVector position = new PVector();
 public PVector direction = PVector.sub(blackhole.position, matter.position);

 void draw()
{
   background(0); //flush w/black screen bg
   blackhole.render(); //render target blackhole
   
   for (int i = 0; i < 100; i++) //initialize all matter
   {
    matter[i] = new Matter();
   }
   while (matter.position != blackhole.position) //checks if matter is not in blackhole position
   {
     matter.position.add(direction); //move all matter to intended direction
   }
}
