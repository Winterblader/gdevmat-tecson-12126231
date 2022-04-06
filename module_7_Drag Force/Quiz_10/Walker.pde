public class Walker //initialize class walker
{
public float scale = 20;
public float mass = 100;
public PVector position = new PVector();
public PVector velocity = new PVector();
public PVector acceleration = new PVector(); //right
public float velocityLimit = 10;
public float r, g, b;
 
public Walker(){}

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
   this.acceleration.mult(0); //reset acceleration/frame
 }
 
 public void render()
 {
   fill(r,g,b); //fill with random colors
   circle(position.x, position.y, scale); //render circle 
 }
 
 //bounce circle if it hits edge
 public void checkEdges()
 {
  if (this.position.y <= Window.bottom)
  {
   this.velocity.y *= -1;
  }
  if (this.position.x >= Window.right)
  {
   this.velocity.x *= -1; 
  }
  if (this.position.x <= Window.left)
  {
   this.velocity.y *= -1; 
  }
  if (this.position.y >= Window.top)
  {
   this.velocity.y += -1; 
  }
 }

}
