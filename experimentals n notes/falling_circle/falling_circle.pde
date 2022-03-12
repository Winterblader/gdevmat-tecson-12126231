float circleY = 0;

void setup() {
  size(300, 300);
}

void draw() {
  background(50);

  ellipse(150, circleY, 25, 25);

  circleY++;

  if (circleY > height) {
    circleY = 0;
  }
}
