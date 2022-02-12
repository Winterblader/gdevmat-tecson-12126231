public class Walker //perlin walker
{
 public float x;
 public float y;
 public float tx = 0, ty = 10000;
 
 void render()
 { 
//did a random color /thickness fix instead out of frustration (/•₃•)/ ʸ?
   int R = (int)random(0,255);
   int G = (int)random(0,255);
   int B = (int)random(0,255);
   fill(color(R, G, B));
   int thickness = (int)random(5,150);
   
   circle(x, y, thickness);
//i need help T_T
 }
 
 void perlinWalk()
 {
   x = map(noise(tx), 0, 1, -640, 640);
   y = map(noise(ty), 0, 1, -360, 360);
   
   tx += 0.01f;
   ty += 0.01f;
 }
}
