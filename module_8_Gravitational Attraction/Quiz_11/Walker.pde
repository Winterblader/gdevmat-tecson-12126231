public class Walker //initialize class walker
{
public float gravitationalConstant = 1;
public float scale = 10;
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
   noStroke(); //no stroke
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
   this.velocity.x *= -1; 
  }
  if (this.position.y >= Window.top)
  {
   this.velocity.y += -1; 
  }
 }
 
 public PVector calculateAttraction(Walker walker)
 {
   PVector force = PVector.sub(this.position, walker.position); //direction
   float distance = force.mag();
   force.normalize(); //normalize to accurately get direction
   
   distance = constrain(distance, 5, 25); //solves divide by 0, and divide by really tiny values
   //so it doesnt shoot out the smol walkers
   
   float strength = (this.gravitationalConstant * this.mass * walker.mass) 
   / (distance * distance);
   force.mult(strength);
   return force;
 }

}
