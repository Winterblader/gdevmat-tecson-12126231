public class Walker //initialize class walker
{
public float scale = 10;
public float mass = 100;
public float mew = 0.01f; //cpefficient of friction
public PVector position = new PVector();
public PVector velocity = new PVector();
public PVector acceleration = new PVector(0.2, 0 * this.mass); //right

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
 }
 
 public void render()
 {
   fill(r,g,b); //fill with random colors
   circle(position.x, position.y, scale); //render circle 
 }

}
