public class Walker //perlin walker
{
 public float x;
 public float y;
 public float tx = 0, ty = 10000;
 
 void render()
 { 
   noStroke();
   int R = (int)random(0,255);
   int G = (int)random(0,255);
   int B = (int)random(0,255);
   int thickness = (int)random(5,150);
   fill(color(R, G, B));
   circle(x, y, thickness);
 }
 
 void perlinWalk()
 {
   x = map(noise(tx), 0, 1, -640, 640);
   y = map(noise(ty), 0, 1, -360, 360);
   
   tx += 0.01f;
   ty += 0.01f;
 }
}
