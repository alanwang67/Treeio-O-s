abstract class Enemy{
    private int health;
    
    abstract int getHealth();
    abstract int damage();
    abstract void move();
}