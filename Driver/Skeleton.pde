class Skeleton extends Enemy {
  Skeleton(float x, float y) {
    c=color(102, 102, 153);
    size=50;
    health=125;
    xcor=x;
    ycor=y;
    xmove=55;
    ymove=55;
    reward=1; 
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
    fill(255,255,255);
    text(health, xcor, ycor);
  }
  void move() { //amount of money you earn when you kill a skeleton
    if ((xcor<55||get((int)xcor+55, (int)ycor)==color(255, 255, 255))&&xmove==55) {
      xcor+=xmove;
      return;
    }
    if (ycor>550||get((int)xcor, (int)ycor+55)==color(255, 255, 255)) {
      ycor+=ymove;
      return;
    }
    xmove=-55;
    if (xcor>55&&get((int)xcor-55, (int)ycor)==color(255, 255, 255)&&xmove==-55) {
      xcor+=xmove;
      return;
    }
    xmove=55;
    if (get((int)xcor+55, (int)ycor)==color(255, 255, 255)&&xmove==55) {
      xcor+=xmove;
      return;
    }
  }
}
