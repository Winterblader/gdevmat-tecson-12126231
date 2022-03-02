void setup()
{
 size(1280, 720, P3D);
 camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
 }
 
 Bouncer myBouncer = new Bouncer(); //creates an instance of bouncer class in sketch
 
void draw() //per frame
{
  //for Bouncer / bouncy ball
  myBouncer.moveAndBounce(); 
  myBouncer.render();
}
