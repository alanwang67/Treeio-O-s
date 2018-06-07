class Warrior extends Tower{
  Warrior(float x, float y){
    c=color(66, 134, 244);
    range=55;
    price=10;
    dmg=5;
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