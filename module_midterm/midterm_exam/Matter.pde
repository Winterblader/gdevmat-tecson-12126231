public class Matter
{
  PVector position = new PVector();
  
  void render()
 {
  float gaussian = randomGaussian();
  println(gaussian); //outputs print of gaussian values generated
  
  float standardDeviation = 100;
  float mean = 150;
  
  float x = standardDeviation * gaussian + mean; //gaussian for x values
  int y = (int)random(-360,360); //randomized y values from top to bottom of screen
  
   //random colors and scale
   int R = (int)random(0,255);
   int G = (int)random(0,255);
   int B = (int)random(0,255);
   int scale = (int)random(20,40);
   fill(color(R,G,B)); //fill w/random color values
   circle(x, y, scale); //spawn circle
 }
}
