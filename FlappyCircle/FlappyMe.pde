class FlappyMe {
  PVector location;
  int flappy_size;
  int velocity;
  
  FlappyMe() {
    location = new PVector(50,height/2);
    flappy_size = 20;
    velocity = 5;
  }
  
  void render() {
    ellipse(location.x,location.y,flappy_size,flappy_size);
  }
  
  void step() {
    location.y += velocity;
  }
  
  void edge_check(Barrier b) {
  
  }
}