class Knight extends Tower {
  Knight(float x, float y) {
    c=color(100, 100, 100);
    range=50;
    price=25;
    dmg=10;
    xcor=x;
    ycor=y;
  }
  void attack(Enemy s) {
    s.damage(dmg);
  }
  boolean inrange(Enemy s) {
    return sqrt(sq(s.xcor-xcor)+sq(s.ycor-ycor))<=range/2;
  }
  void display() {
    fill(c);
    ellipse(xcor, ycor, range, range);
  }
}
