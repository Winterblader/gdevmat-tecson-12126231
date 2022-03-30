public class Walker //initialize class walker
{
public PVector position = new PVector();
public PVector velocity = new PVector();
public PVector acceleration = new PVector();

public float velocityLimit = 10;
public float scale = 15;
public float mass = 1;
 
public Walker(){}

public void applyForce(PVector force)
{
  PVector f = PVector.div(force, this.mass);
  this.acceleration.add(f); //force accumulation
}

public void spill()
{
 //random color
 fill(random(255), random(255), random(255)); 
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
