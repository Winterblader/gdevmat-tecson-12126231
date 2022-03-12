int r,g,b; //stores color values

void setup()
{
 size(300,300);
 noStroke();
 for(int y=0; y<height; y+=30)
 for(int x=0; x<width; x+=30)
   {
     r = (int)random(0,255);//(int) is for typecasting
     g = (int)random(0,255);
     b = (int)random(0,255);
     fill(r,g,b);
     rect(x,y,30,30);
   }
}
