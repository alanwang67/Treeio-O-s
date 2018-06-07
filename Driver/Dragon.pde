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
  boolean traverse() {
    if (ycor == 27 && xcor < 522) {
      xcor += 1;
      return false;
    } else if (ycor < 137 && xcor == 522) {
      ycor += 1;
      return false;
    } else if (xcor > 27 && ycor == 137) {
      xcor -= 1;
      return false;
    } else if (ycor < 247 && xcor == 27) {
      ycor += 1;
      return false;
    } else if (xcor < 522 && ycor == 247) {
      xcor += 1;
      return false;
    } else if (ycor < 357 && xcor == 522) {
      ycor += 1;
      return false;
    } else if (xcor > 27 && ycor == 357) {
      xcor -= 1;
      return false;
    } else if (ycor < 467 && xcor == 27) {
      ycor += 1;
      return false;
    } else if (xcor < 522 && ycor == 467) {
      xcor += 1;
      return false;
    } else if (ycor < 700 && xcor == 522) {
      ycor += 1;
      return false;
    }
    return true;
  }
}
