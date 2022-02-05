class WalkerBiased //higher chance of bias to a certain direction/side
{
  float x;
  float y;
  
  void render()
  {
   int R = (int)random(0,255); //generates random values for Red from 0 to 255
   int G = (int)random(0,255); //generates random values for Green from 0 to 255
   int B = (int)random(0,255); //generates random values for Blue from 0 to 255
   int A = (int)random(50,100); //generates random values for Alpha from 50 to 100
   fill(color(R,G,B), A); //fill with RGB colors and opacity (alpha)
   square(x, y, 20); //create square
  }
  
  void randomWalkBiased()
  {
    int rng = int(random(8));
    
   if (rng == 0)
   {
    y+=5; 
   }
    
    else if (rng == 1)
   {
    y-=10; 
   }

   else if (rng == 2)
   {
    x+=10; 
   }

   else if (rng == 3)
   {
    x-=10; 
   }

   else if (rng == 4)
   {
    y-=10;
    x-=10;
   }

   else if (rng == 5)
   {
    y-=10;
    x+=10;
   }

   else if (rng == 6)
   {
    y+=10;
    x+=10;
   }

   else if (rng == 7)
   {
    y+=10;
    x-=10;
   }
  }
}
