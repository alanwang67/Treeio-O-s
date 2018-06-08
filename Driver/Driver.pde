import java.util.Stack;
Stack<String> stack = new Stack<String>();

int money;
int health;
int level;
int towerPicked;
ArrayList<Tower> towers;
ArrayList<Enemy> enemies;



void setup() {
  frameRate(10);
  towers=new ArrayList<Tower>();
  enemies=new ArrayList<Enemy>();
  health=2000;
  money=100;
  towerPicked=0;
  size(605, 605);
  background(0, 255, 0);
  for (int x = 0; x < 9; x++) {
    if (x % 2 == 0) {
      rect(0, x * 55, 550, 55);
    }
    if (x % 4 == 0) {
      rect(495, x * 55, 55, 165);
    }
  }
  rect(0, 165, 55, 55);
  rect(0, 385, 55, 55);
  for (int x = 0; x < 15; x++) { 
    line(55 * x, 0, 55 * x, 605);
    line(0, 55 * x, 605, 55 * x);
  }
  for (int x=0; x<10; x++) {
    enemies.add(new Dragon(-x*6*55.0/2-55.0/2, 55.0/2));
  }
  fill(110);
  text("health:", 550, 25);
  text(health, 550, 50);
  text("money:", 550, 75);
  text(money, 550, 100);
}



void draw() {
  if (health>0) {
    for (int i=0; i<towers.size(); i++) {
      towers.get(i).display();
    }
    for (int i=0; i<enemies.size(); i++) {
      if (enemies.get(i).getHealth()<=0) {
        enemies.remove(i);
        i--;
        return;
      } else {
        for (int j=0; j<towers.size(); j++) {
          if (towers.get(j).inrange(enemies.get(i))) {
            towers.get(j).attack(enemies.get(i));
          }
        }
        if (enemies.get(i).ycor<605) {
          fill(255, 255, 255);
          rect(enemies.get(i).xcor-55/2, enemies.get(i).ycor-55/2, 55, 55);
          enemies.get(i).move();
          enemies.get(i).display();
        } else {       
          health-=enemies.get(i).getHealth();
          enemies.remove(i);
          i--;
          fill(0, 255, 0);
          rect(550, 0, 55, 55);
          fill(110);
          text("health:", 550, 25);
          text(health, 550, 50);
        }
      }
    }
  } else {
    background(0, 0, 0);
  }
}



void mouseClicked() {
  if (get(mouseX, mouseY)==color(0, 255, 0)) {
    if (towerPicked==0) {
      Knight tmp=new Knight(mouseX, mouseY);
      if (money>=tmp.price) {
        towers.add(tmp);
        money-=tmp.price;
        fill(0, 255, 0);
        rect(550, 55, 55, 55);
        fill(110);
        text("money:", 550, 75);
        text(money, 550, 100);
      }
    }
    if (towerPicked==1) {
      Archer tmp=new Archer(mouseX, mouseY);
      if (money>=tmp.price) {
        towers.add(tmp);
        money-=tmp.price;
      }
    }
  }
  if (get(mouseX, mouseY)==color(100, 100, 100)) {
    towerPicked=0;
  }
  if (get(mouseX, mouseY)==color(185, 66, 244)) {
    towerPicked=1;
  }
}
