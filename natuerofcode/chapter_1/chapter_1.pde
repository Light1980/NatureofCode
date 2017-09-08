Ball b1;
void setup() {
  size(720,640);
  background(255);
  b1 = new Ball(20);
}

void draw() {
  background(255);
  b1.display();
  b1.update();

}