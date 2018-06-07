abstract class Tower {
  public color c;
  public float range;
  public int price;
  public int dmg;
  public float xcor;
  public float ycor;
  abstract void attack(Enemy s);
  abstract boolean inrange(Enemy s);
  abstract void display();
}
