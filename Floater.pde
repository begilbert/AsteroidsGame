abstract class Floater {
  // variables
  protected double xCoords, yCoords;
  protected double xDirection, yDirection, theta;
  protected float rad = (float)(theta * Math.PI/180);
  protected ArrayList<ArrayList<Integer>> corners = new ArrayList<ArrayList<Integer>>();
  //abstract methods
  /*
  abstract public void setCoords(int x, int y);
  abstract public int getCoords();
  
  abstract public void setDirection(int x, int y);
  abstract public int getDirection();
  
  abstract public void setTheta(int th);
  abstract public int getTheta();
  */
  //standard methods
  public void addCoords(int x, int y) {
    ArrayList<Integer> xyCoords = new ArrayList<Integer>();
    xyCoords.add(x);
    xyCoords.add(y);
    corners.add(xyCoords);
  }
  public void accelerate(double rate) {
    xDirection += ((rate) * Math.cos(rad));
    yDirection += ((rate) * Math.sin(rad));
  }
  void turn (int th) {
    theta += th;
    if (theta < 0) theta += 360;
    if (theta > 360) theta -= 360;
  }
  public void move() {
    xCoords += xDirection;
    yCoords += yDirection;
    if (xCoords > width) {
      xCoords = 0;
    }
    else if (xCoords < 0) {
      xCoords = width;
    }
    if (yCoords > height) {
      yCoords = 0;
    }
    else if (yCoords < 0) {
      yCoords = height;
    }
  }
  public void show() {
    translate((float)xCoords, (float)yCoords);
    rotate(rad);
    beginShape();
    for (int i = 0; i < corners.size(); i++) {
      vertex(corners.get(i).get(0), corners.get(i).get(1));
    }
    endShape(CLOSE);
    rotate(-1 * rad);
    translate(-1 * (float)xCoords, -1 * (float)yCoords);
  }
}
