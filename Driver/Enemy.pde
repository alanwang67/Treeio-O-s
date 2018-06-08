abstract class Enemy {
  public color c;
  public int size;
  public int health;
  public float xcor;
  public float ycor;
  public float xmove;
  public float ymove;
  public int reward;
  abstract int getHealth();
  abstract void damage(int dmg);
  abstract void display();
  abstract void move();
}
