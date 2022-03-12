ArrayList<PVector> circles = new ArrayList<PVector>();

void setup() {
  size(300, 300);
}

void mouseDragged() {
  circles.add(new PVector(mouseX, mouseY));
}

void draw() {
  background(50);

  textSize(16);
  text("Circles: " + circles.size(), 100, 100);
  text("Framerate: " + frameRate, 100, 125);

  for (int i = 0; i < circles.size(); i++) {
    PVector circle = circles.get(i);
    circle.y += 1;
    ellipse(circle.x, circle.y, 50, 50);

    if (circle.y > height) {
      circles.remove(i);
    }
  }
}
