class Walker //uniformly distributed chance
{
 float x;
 float y;
 
 void render()
 {
   int R = (int)random(0,255);
   int G = (int)random(0,255);
   int B = (int)random(0,255);
   int A = (int)random(50,100);
   fill(color(R,G,B), A);
   circle(x, y, 20); //create circle
 }
 
 void randomWalk()
 {
   int rng = int(random(8));
   //move up
   if (rng == 0)
   {
    y+=10; 
   }
   //move down
   else if (rng == 1)
   {
    y-=10; 
   }
   //move right
   else if (rng == 2)
   {
    x+=10; 
   }
   //move left
   else if (rng == 3)
   {
    x-=10; 
   }
   //move lower left
   else if (rng == 4)
   {
    y-=10;
    x-=10;
   }
   //move lower right
   else if (rng == 5)
   {
    y-=10;
    x+=10;
   }
   //move upper right
   else if (rng == 6)
   {
    y+=10;
    x+=10;
   }
   //move upper left
   else if (rng == 7)
   {
    y+=10;
    x-=10;
   }
 }
}
