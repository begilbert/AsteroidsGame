class Bullet extends Floater{
   private double dRadians;
   public Bullet(){
     myCenterX = muffin.getX();
     myCenterY = muffin.getY();
     myPointDirection = muffin.getPointDirection();
     dRadians = myPointDirection*(Math.PI/180);
     myDirectionX = 5*Math.cos(dRadians) + muffin.getDirectionX();
     myDirectionY = 5*Math.sin(dRadians) + muffin.getDirectionY();
  }
  public void setX(int x){myCenterX = x;}
    public int getX(){return (int)myCenterX;}   
    public void setY(int y){myCenterY = y;}   
    public int getY(){return (int)myCenterY;}   
    public void setDirectionX(double x){myDirectionX = x;}   
    public double getDirectionX(){return myDirectionX;}   
    public void setDirectionY(double y){myDirectionY = y;}   
    public double getDirectionY(){return myDirectionY;}   
    public void setPointDirection(int degrees){myPointDirection = degrees;}   
    public double getPointDirection(){return myPointDirection;} 
    public void show(){
      fill(0,0,255,100);
      noStroke();
      ellipse((float)myCenterX+3, (float)myCenterY, 13, 13);
    }
}
