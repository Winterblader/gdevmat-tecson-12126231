public class Blackhole
{
  PVector position = new PVector();
    
  void render()
  {
    //randomize spawn
    //int x = (int)random(-600,600);
    //int y = (int)random(-300,300);
    fill(color(255)); //fill white
    circle(position.x, position.y, 50); //render circle
  }
}
