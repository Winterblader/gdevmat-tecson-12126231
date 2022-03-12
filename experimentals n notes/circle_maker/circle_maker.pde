ArrayList<PVector> circles = new ArrayList<PVector>();

void setup() {
  size(300, 300);

  PVector circle = new PVector(150, 150);
  circles.add(circle);
}

void mousePressed() {
 PVector circle = new PVector(mouseX, mouseY);
 circles.add(circle);
}

void draw() {
  background(50);

  for(int i = 0; i < circles.size(); i++) {
   PVector circle = circles.get(i);
   ellipse(circle.x, circle.y, 50, 50);
  }
}
