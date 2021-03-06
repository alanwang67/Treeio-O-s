class Knight extends Tower{
  Knight(float x, float y){
    c=color(255, 0, 0);
    range=150;
    price=25;
    dmg=5;
    xcor=(int)x/55*55+55/2;
    ycor=(int)y/55*55+55/2;
  }
  void attack(Enemy s){
    s.damage(dmg);
  }
  boolean inrange(Enemy s){ //is enemy in range of knight
    return sqrt(sq(s.xcor-xcor)+sq(s.ycor-ycor))<=range/2;
  }
  void display() {
    fill(c);
    ellipse(xcor, ycor, 50, 50);
  }
}
