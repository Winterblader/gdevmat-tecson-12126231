void setup() 
{
	size(1280, 720, P3D); // window size
	camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0); // centered camera
}

int[] Matter = new int[100];
Blackhole blackhole = new Blackhole(); // spawn target
Matter[] matter = new Matter[100]; // spawn 100 matter

void draw() 
{
	background(0); // flush w/ black
	blackhole.render(); // render target blackhole
	
  //loop matter 100 times
	for (int i = 0; i < 100; i++) 
  {
		if (matter[i] == null) 
    {
			matter[i] = new Matter(); // initialize all matter
		}
		
		if (matter[i].position != blackhole.position) //checks if matter is at blackhole pos
    {
			PVector direction = PVector.sub(blackhole.position, matter[i].position);
			matter[i].position.add(direction); // move all matter to blackhole
    }
	}
}
