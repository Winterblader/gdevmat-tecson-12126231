void setup()
{
 size(1080, 720, P3D); //window
 camera(0, 0, -(height/2.0) / tan(PI*30.0 / 130.0), 0, 0, 0, 0, -1, 0); //centered
 }
 
 Walker myWalker = new Walker(); //creates an instance of walker class in sketch
 WalkerBiased myWalkerBiased = new WalkerBiased(); //creates another instance of a walker
 
void draw() //per frame
{
  //for Walker
  myWalker.randomWalk(); 
  myWalker.render();

  //for WalkerBiased
  myWalkerBiased.randomWalkBiased();
  myWalkerBiased.render();
}
