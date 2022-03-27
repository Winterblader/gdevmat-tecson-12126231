public class Walker //intialize walker class
{
public PVector position = new PVector();
public PVector velocity = new PVector();
public PVector acceleration = new PVector();

public float velocityLimit = 10;
public float scale;
public float mass;
 
public Walker()
{
  
}

public void applyForce(PVector force)
{
  PVector f = PVector.div(force, this.mass);
  this.acceleration.add(f); //force accumulation
}

 public void update()
 {
   this.velocity.add(this.acceleration); //velocity accumulation
   this.velocity.limit(velocityLimit);
   this.position.add(this.velocity);
   this.acceleration.mult(0); //resets acceleration per frame
 }
 
 public void render()
 {
   circle(position.x, position.y, scale); //render circle 
 }
 
 //bounce circle if it hits edge
 public void checkEdges()
 {
  if (walker.position.y <= Window.bottom)
  {
    walker.velocity.y *= -1;
  }
  if (walker.position.x >= Window.right)
  {
   walker.velocity.x *= -1; 
  }
  if (walker.position.x <= Window.left)
  {
   walker.velocity.y *= -1; 
  }
  if (walker.position.y >= Window.top)
  {
   walker.velocity.y += -1; 
  }
 }
 
}
