public class Liquid //initialize class liquid
{
 public float x, y;
 public float horizon, depth;
 public float cd; //coefficient of drag
 
 public Liquid(float x, float y, float horizon, float depth, float cd) /*public constructor*/
 {
 this.x = x;
 this.y = y;
 this.horizon = horizon;
 this.depth = depth;
 this.cd = cd;
 }
 
 public void render()
 {
  noStroke();
  fill(28, 120, 186); //light blue
  beginShape(); //allows vertex-use
  vertex (x - horizon, y, 0);
  vertex (x + horizon, y, 0);
  vertex (x + horizon, y + depth, 0);
  vertex (x - horizon, y + depth, 0 );
  endShape();
 }
 
 //checks walker contact/collision with liquid
 public boolean isCollidingWith(Walker walker)
 {
   PVector pos = walker.position;
   //return if liquid is in collision with walker
   return pos.x > this.x - this.horizon &&
          pos.x < this.x + this.horizon &&
          pos.y < this.y;
 }
 
 public PVector calculateDragForce(Walker walker)
 {
   //drag magnitude is coffecificent of drag * speed squared
   float speed = walker.velocity.mag();
   float dragMagnitude = this.cd * speed * speed;
   
   //direction is inverse of velocity
   PVector dragForce = walker.velocity.copy().mult(-1);
   
   
   //scale according to magnitude of drag force
   dragForce.normalize();
   dragForce.mult(dragMagnitude);
   return dragForce;
 }
 
}
