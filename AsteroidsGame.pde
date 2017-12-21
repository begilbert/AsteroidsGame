SpaceShip muffin;
Star[] stars;
ArrayList <Asteroid> theList;
ArrayList <Bullet> b;
public void setup() 
{
  size(500,500);
  theList = new ArrayList <Asteroid>();
  for (int i = 0; i < 20; i++){
    theList.add(new Asteroid());
  }
  muffin = new SpaceShip();
  b = new ArrayList <Bullet>();
  stars = new Star[300];
  for (int i = 0; i < stars.length; i++){
    stars[i] = new Star(); 
  }
}

public void draw() 
{
  background(0);
  for (int i = 0; i < stars.length; i++){
    stars[i].show();
    stars[i].move();
  }
  for (int i = 0; i < theList.size(); i++){
    theList.get(i).show();
    theList.get(i).move();
    if (dist(muffin.getX(), muffin.getY(), theList.get(i).getX(), theList.get(i).getY()) <= 25){
    theList.remove(i);
  }
}
  for (int i = 0; i < b.size(); i++){
  b.get(i).show();
  b.get(i).move();
  if (b.get(i).getX() > 500 || b.get(i).getX() < 0 || b.get(i).getY() > 500 || b.get(i).getY() < 0){
    b.remove(i);
    }
}
  muffin.show();
  muffin.move();
  for (int i = 0; i < theList.size(); i++){
    for (int j = 0; j < b.size(); j++){
        if (dist(b.get(j).getX(), b.get(j).getY(), theList.get(i).getX(), theList.get(i).getY()) <= 25){
        theList.remove(i);
        b.remove(j);
        break;
      }

  }
 }
}
public void keyPressed(){
 if (key == CODED){
  if (keyCode == UP)
  {
    muffin.accelerate(.25);
  }

  if (keyCode == DOWN)
  {
    muffin.accelerate(-.25);
  }
  if (keyCode == RIGHT)
  {
    muffin.rotate(10);
  }
  if (keyCode == LEFT)
  {
    muffin.rotate(-10);
  }
}
  if (key == 'h')
  {
    muffin.setX((int)(Math.random()*500));
    muffin.setY((int)(Math.random()*500));
    muffin.setPointDirection((int)(Math.random()*360));
    muffin.setDirectionX(0);
    muffin.setDirectionY(0);
  }
  if (key == ' ')
  {
    b.add(new Bullet());
  }
}
