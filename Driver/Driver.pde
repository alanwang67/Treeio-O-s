void setup() {
  size(600, 600);
  background(0);
  for (int x = 0; x < 7; x++) {
    if (x % 2 == 0) {
      rect(0, x * 80, 555, 55);
    }
    if (x % 4 == 0) {
      rect(500, x * 80, 55, 200); 
    }
  }
  rect(0, 160, 55, 160);
}
