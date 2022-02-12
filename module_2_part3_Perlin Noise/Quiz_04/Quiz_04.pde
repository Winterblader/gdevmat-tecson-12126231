void setup()
{
 size(1280,720, P3D); //window size
 camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0); //centered
 background(255); //white window bg 
}

Walker perlinWalker = new Walker(); //create instance of walker class
float tc = 0;

void draw()
{
//my futile attempt to figure it out T_T
   float n = noise((tc), 0, 255);
   tc += 0.01f;
   noStroke();
   fill (n, n, n);
//does not work (╯°□°)╯>>> ┻━┻
//┬──┬ /(*_*/)
   
  perlinWalker.perlinWalk(); 
  perlinWalker.render();
  
  //window x & y computation: (640, 360) (-640, -360)
}
