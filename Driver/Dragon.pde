class Dragon extends Enemy {
  Dragon(float x, float y) {
    c=color(100, 100, 100);
    size=50;
    health=50;
    xcor=x;
    ycor=y;
    xmove=55;
    ymove=55;
  }
  int getHealth() {
    return health;
  }
  void damage(int dmg){
    health-=dmg;
  }
  void display() {
    fill(c);
    ellipse(xcor, ycor, size, size);
  }
  void move(){
    if(get((int)xcor+55,(int)ycor)!=color(0, 255, 0)&&xmove==55){
      xcor+=xmove;
      return;
    }
    if(get((int)xcor,(int)ycor+55)!=color(0, 255, 0)){
      ycor+=ymove;
      return;
    }
    xmove=-55;
    if(xcor>55&&get((int)xcor-55,(int)ycor)!=color(0, 255, 0)&&xmove==-55){
      xcor+=xmove;
      return;
    }
    xmove=55;
    if(get((int)xcor+55,(int)ycor)!=color(0, 255, 0)&&xmove==55){
      xcor+=xmove;
      return;
    }
  }
}
