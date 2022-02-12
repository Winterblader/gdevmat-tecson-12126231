void setup()
{
 size(1280,720, P3D); //window size
 camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0); //centered
}

Walker perlinWalker = new Walker(); //creates an instance of walker class in sketch

void draw()
{
  float random = random(0, 255);
  background (random);
  //for perlin Walker
  perlinWalker.perlinWalk(); 
  perlinWalker.render();
  
  //window size computation: 
  //(1280/2=640, 720/2=360) = (640, 360) (-640, -360)
}
