int price;
int health;
int level;
ArrayList<Tower> towers;
ArrayList<Enemy> enemies;
void mouseClicked() {
  if (get(mouseX, mouseY)==color(0, 255, 0)) {
    towers.add(new Knight(mouseX, mouseY));
  }
}
void setup() {
  towers=new ArrayList<Tower>();
  enemies=new ArrayList<Enemy>();
  price=100;
  size(600, 600);
  background(0, 255, 0);
  for (int x = 0; x < 9; x++) {
    if (x % 2 == 0) {
      rect(0, x * 55, 550, 55);
    }
    if (x % 4 == 0) {
      rect(495, x * 55, 55, 165);
    }
  }
  rect(0, 165, 55, 55);
  rect(0, 385, 55, 55);
  for (int x = 0; x < 15; x++) { 
    line(55 * x, 0, 55 * x, 600);
    line(0, 55 * x, 600, 55*x);
  }
}
void draw() {
  for (int i=0; i<towers.size(); i++) {
    towers.get(i).display();
  }
}
void move() {
}
