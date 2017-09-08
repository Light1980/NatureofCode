walker w;

void setup() {
  size(1080, 720);
  w = new walker();
}

void draw() {
  w.render();
  w.step();
}