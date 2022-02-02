int globalVariable = 100;
int time = 10000;

int xspacing = 16; //spacing for each horizontal wave
int w; //sine wave width

float theta = 0.0; //starts at angle 0
float amplitude = 75.0; //height of each wave
float period = 500.0; //pixel count before a wave loops
float dx;
float[] yvalues; //array to store height values for the wave
//the function that gets called at the very first frame

void setup ()
{
 size(1080, 720, P3D); //set window size to 1080x720
 //centers camera
 camera(0, 0, -(height/2.0) / tan(PI*30.0 / 130.0), 0, 0, 0, 0, -1, 0);
 w = width+16;
 dx = (TWO_PI / period) * xspacing;
 yvalues = new float[w/xspacing];
}

//the function that gets called every frame
void draw ()
{
 background(0);//sets the bg color of the window 
 
 drawCartesianPlane();
 drawLinearFunction();
 drawQuadraticFunction();
 drawSineWave();
}

void drawCartesianPlane()
{
  strokeWeight(1);//thickness
  color grey = color(128, 128, 128);//set color to grey
  fill(grey); //apply colorr to inside space
  stroke(grey);//apply color to linings
  line (200, 0, -200, 0);
  line (0,-200, 0, 200);
  
  for(int i = -200; i <= 200; i+=15)
  {
   //draws a line x1, y1, x2, y2
   line(i, -2, i, 2);
   line(-2, i, 2, i);
  }
}

void drawLinearFunction()
{
   /*
      f(x) = -5x + 30
      Let x be 3, then y = 15 (3,15);
      Let x be -2, then y = 40 (-2,40);
   */
   
   color purple = color(128, 0, 128);//set color to purple
   fill(purple);//apply to inside space
   stroke(purple);//apply color to linings
   
   for(int x = -50; x<= 50; x++)
   {
    circle(x * -5, 30, 3); //loops circles at x,y with circumference
   }
}

void drawQuadraticFunction()
{
   /*
    * f(x) x^2 - 15x - 3;
    * Let x be 2, then y = -29
    * Let x be -1, then y = 13
    */
    
    color yellow = color(255, 255, 0);//set color to yellow
    fill(yellow);//apply color to inside space
    stroke(yellow);//apply color to linings
    
    for (float x = -50; x<=50; x+=0.1f)//0.1f minimizes the effects of spacings
    {
     circle(x, ((float)Math.pow(x, 2) + (x * -15) -3), 3); //loops circles
    }
}

void drawSineWave()
{
calcWave();
renderWave();
}

void calcWave()
{
  theta += 0.02; //speed of sine wave

  float x = theta;
  for (int i = 0; i < yvalues.length; i++) 
  {
    yvalues[i] = sin(x)*amplitude;
    x+=dx;
  }
}

void renderWave()
{
  noStroke();
  fill(0, 255, 0);
  //Draws the waves with an ellipse at each location
  for (int x = 0; x < yvalues.length; x++) 
  {
    ellipse(x*xspacing, height/10+yvalues[x], 10, 10);
  }
}
