class Barrier {
  PVector location;
  PVector velocity;
  int ellipse_size;
  color fill_color;

  Barrier() {
    location = new PVector(random(300)+width, random(height));

    velocity = new PVector(random(-20,-10), random(-10, 10));

    ellipse_size = int(random(50, 300));
  }

  void step() {
    if (location.y > 0 && location.y < height) {
      location = location.add(velocity);
    } else {
      velocity.y = -velocity.y*1.1;
      location = location.add(velocity);
    }
  }

  void render() {
    ellipse(location.x, location.y, ellipse_size, ellipse_size);
  }
}