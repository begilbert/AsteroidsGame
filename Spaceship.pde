class Spaceship extends Floater {
  public Spaceship() {
    //
    super.addCoords(16, 0);
    super.addCoords(-8, 8);
    super.addCoords(-8, -8);
    //
    xCoords = yCoords = 250;
    xDirection = yDirection = 0;
    theta = 0;
  }
  public void show(boolean jets) {
    
