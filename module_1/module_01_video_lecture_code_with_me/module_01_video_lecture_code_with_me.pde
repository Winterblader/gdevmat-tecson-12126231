

//the function that gets called at the very first frame
void setup ()
{
  size (1920, 1055, P3D); //set window size to 1920x1055
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 130.0), 0, 0, 0, 0, -1, 0);
}

//the function that gets called every frame
void draw ()
{
  background(360);//sets bg color of window
  
  //color red = color(255, 0, 0);
  //fill(red);
  //stroke(red);
  //circle(0, 0, 10); //draws a circle at x,y with circumference
  
  //strokeWeight(4); //thickness
  //color white = color(255, 255, 255); //to change color
  //fill(white); //to apply color function to line
  //stroke(white); //all the strokes will be the color selected
  //line (100, 100, -100, -100); //draws a line x1, y1, x2, y2
  
  //strokeWeight(8);
  //color blue = color(10, 10, 10);
  //fill(blue);
  //stroke(blue);
  //line(-150, -100, 50, 150);

  drawCartesianPlane();
  drawLinearFunction();
  drawQuadraticFunction();
  drawCircle();
}

void drawCartesianPlane()
{
 strokeWeight(1);
  color green = color(0, 255, 0);
  fill(green);
  stroke(green);
  line(500, 0, -500, 0);
  line(0, -500, 0, 500);
  
  for(int i = -500; i <= 500; i+=10)
  {
  line(i, -2, i, 2);
  line(-2, i, 2, i);
  }
}

void drawLinearFunction()
{
   /*
       f(x) = x + 2
       Let x be 4, then y = 6 (4,6);
       Let x be -5, then y = -3 (-5,-3);
   */
   
   color red = color(255, 0, 0);
   noFill();
   stroke(red);
   
   for(int x = -200; x<= 200; x++)
   {
     circle(x, x + 2, 20);
   }
}

void drawQuadraticFunction()
{
      /*
      * f(x) = x^2 + 2x - 5;
      * Let x be 2, then y = 3
      * Let x be -1, then y = -6
      */
      
    color yellow = color(255, 255, 0);
    fill(yellow);
    noStroke();
    
    for (float x = -400; x <=400; x+=0.1f)//0.1f minimizes the effects of spacings
    {
      circle(x * 10, ((float)Math.pow(x, 2) + (x * 2) - 5), 10);
    }
}

void drawCircle() //we will be drawing a set of points/circles to draw a whole circle
{
    color pink = color (255, 192, 203);
    fill(pink);
    stroke(pink);
    float radius = 50;
    
    for (int x = 0; x <= 360; x++)
    {
       circle(((float)Math.cos(x) * radius), ((float)Math.sin(x) * radius), 5);
    }
}
