void setup()
{
 size(1020,720); //window size
 camera(0, 0, -(height/2.0) / tan(PI*30.0 / 130.0), 0, 0, 0, 0, -1, 0); //centered
 background(255); //white window bg
}

void draw()
{
  float gaussian = randomGaussian();
  println(gaussian); //outputs print of gaussian values generated
  
  float standardDeviation = 100;
  float mean = 150;
  
  float x = standardDeviation * gaussian + mean; //gaussian for x values
  int y = (int)random(-510,510); //randomized y values from top to bottom of screen
  float z = standardDeviation * gaussian + mean; //gaussian for circle thickness/scale
  
  noStroke(); //colorless stroke (circles)
  //randomized color generation for circles
   int R = (int)random(0,255);
   int G = (int)random(0,255);
   int B = (int)random(0,255);
   int A = (int)random(10,100);
   fill(color(R,G,B), A); //fill with generated random colors
   circle(x, y, z); //create circle
}
