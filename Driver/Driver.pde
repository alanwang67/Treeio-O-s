int price;
int health;
int level;
ArrayList<Tower> towers;
ArrayList<Enemy> enemies;
void mouseClicked(){
  if(get(mouseX,mouseY)==color(0,255,0)){
  towers.add(new Knight(mouseX, mouseY));
  }
}
void setup() {
  towers=new ArrayList<Tower>();
  enemies=new ArrayList<Enemy>();
  price=100;
  size(600, 600);
  background(0,255,0);
  for (int x = 0; x < 7; x++) {
    if (x % 2 == 0) {
      rect(0, x * 80, 555, 55);
    }
    if (x % 4 == 0) {
      rect(500, x * 80, 55, 200); 
    }
  }
  rect(0, 160, 55, 160);
}
void draw(){
  for(int i=0; i<towers.size(); i++){
    towers.get(i).display();
  }
}
void move(){

}
