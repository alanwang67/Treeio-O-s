class Archer extends Tower{
  Archer(float x, float y){
    c=color(185, 66, 244);
    range=100;
    price=35;
    dmg=15;
    xcor=x;
    ycor=y;
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