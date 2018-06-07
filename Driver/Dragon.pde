class Dragon extends Enemy {
  Dragon(float x, float y) {
    c=color(100, 100, 100);
    size=50;
    health=50;
    xcor=x;
    ycor=y;
  }
  int getHealth() {
    return health;
  }
  void damage(int dmg) {
    health-=dmg;
  }
  void display() {
    fill(c);
    ellipse(xcor, ycor, size, size);
  }
}
