void setup()
{
 size(1280, 720, P3D); //window size
 camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0); //centered camera
 }
 
 //mouse vectors
PVector mousePos()
{
  float x = mouseX - Window.windowWidth / 2;
  float y = -(mouseY - Window.windowHeight / 2);
  return new PVector (x, y);
}

void draw() //per frame
{
  //flush screen with (gray)
  background(35);
  
  //stroke draw for the red lightsabre glow
  strokeWeight(15);
  stroke(255, 0, 0);
  strokeCap(ROUND);
  
  PVector mouse = mousePos();
  
  //normalize mouse vectors
  mouse.normalize().mult(600);
  
  line(0, 0, mouse.x, mouse.y);
  line(0, 0, -mouse.x, -mouse.y);
  
  //stroke draw for the inner lightsabre glow
  strokeWeight(8);
  stroke(255);
  strokeCap(ROUND);
  
  //normalize mouse vectors
  mouse.normalize().mult(600);
  
  line(0, 0, mouse.x, mouse.y);
  line(0, 0, -mouse.x, -mouse.y);
  
  //stroke draw for lightsabre handle
  strokeWeight(16);
  stroke(0, 0, 0);
  
  //normalize mouse vectors
  mouse.normalize().mult(100);
  
  line(0, 0, mouse.x, mouse.y);
  line(0, 0, -mouse.x, -mouse.y);
  
  //print length of vector (magnitude)
  println(mouse.mag());
  
}
