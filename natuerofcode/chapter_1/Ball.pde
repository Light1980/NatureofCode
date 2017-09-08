class Ball {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float ball_size;

  Ball (float _size) {
    location = new PVector(random(width), height);
    velocity = new PVector(random(-1,1),random(-10,-15));
    ball_size = _size;
    acceleration = new PVector(random(0.01),random(0.01));
  }

  void display() {
    ellipse(location.x, location.y, ball_size, ball_size);
  }
  
  void update() {
    if (location.y < 0) location.y = height;
    if (location.x < 0) location.x = width;
    if (location.y > height) location.y = 0;
    if (location.x > width) location.x = 0;
    
    PVector mouse = new PVector(mouseX, mouseY);
    PVector dir = PVector.sub(mouse,location);
    dir.normalize();
    
    acceleration = dir.mult(0.5);
    
    velocity.add(acceleration);
    velocity.limit(10);
    location.add(velocity);
  
  }
}