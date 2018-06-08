class Archer extends Tower{
  Archer(float x, float y){
    c=color(185, 66, 244);
    range=250;
    price=35;
    dmg=15;
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
    ellipse(xcor, ycor, 55, 55);
  }
}
