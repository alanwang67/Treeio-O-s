class Knight extends Tower{
  Knight(float x, float y){
    c=color(100, 100, 100);
    range=55;
    price=25;
    dmg=10;
    xcor=(int)x/55*55+55/2;
    ycor=(int)y/55*55+55/2;
  }
  void attack(Enemy s){
    s.damage(dmg);
  }
  boolean inrange(Enemy s){
    return sqrt(sq(s.xcor-xcor)+sq(s.ycor-ycor))<=range/2;
  }
  void display() {
    fill(c);
    ellipse(xcor, ycor, range, range);
  }
}
