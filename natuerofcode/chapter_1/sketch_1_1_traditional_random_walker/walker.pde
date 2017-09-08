class walker {
  float x;
  float y;
  
  walker () {
    x = random(width);
    y = random(height);
  }
  
  void render() {
    ellipse(x,y,3,3);
  }
  
  void step() {
    int choice = int(random(4));
    
    if (choice == 0) {
      x++;
    } else if (choice == 1) {
      x--;
    } else if (choice ==2 ) {
      y++;
    } else {
      y--;
    }
    
    // constrain x and y
    
    x = constrain(x,0,width);
    y = constrain(y,0,height);
  }
}