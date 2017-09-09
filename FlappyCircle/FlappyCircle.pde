Barrier b1;
FlappyMe me;

ArrayList<Barrier> barriers = new ArrayList<Barrier>();

void setup() {
  size(1080,720);
  background(0);
  
  b1 = new Barrier();
  me = new FlappyMe();
}

void draw() {
  background(0);
  me.render();
  me.step();
  
  b1.step();
  b1.render();
}

void keyPressed() {
  me.location.y -= 100;
  
}