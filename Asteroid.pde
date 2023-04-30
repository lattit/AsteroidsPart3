class Asteroid extends Floater {
  
  private double rotSpeed;

  public Asteroid() {
    rotSpeed= ((double)(Math.random() *5));
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0]= -11;
    yCorners[0]= -8;
    xCorners[1]= 7;
    yCorners[1]= -8;
    xCorners[2]= 13;
    yCorners[2]= 0;
    xCorners[3]= 6;
    yCorners[3]= 10;
    xCorners[4]= -11;
    yCorners[4]= 8;
    xCorners[5]= -5;
    yCorners[5]= 0;
    myCenterX= 200;
    myCenterY=200;
    myXspeed=10;
    myYspeed=20;
    myColor=color(51, 153, 255);
    myXspeed= Math.random()*3-1;
    myYspeed = Math.random()*3-1;
    myPointDirection = (int)(Math.random()*200);
    myCenterX = Math.random()*500;
    myCenterY = Math.random()*500;
  }

  public boolean collide() {
    boolean collided = false;
    for (int i= shots.size()-1; i>=0; i--) {
      Bullets bullet = shots.get(i);
      if (dist((float)bullet.getX(), (float)bullet.getY(), (float)getX(), (float)getY())<=30)
      {
        shots.remove(i);
        collided = true;
        break;
      }
    }
    return collided;
  }


  public double getNum() {
    return myCenterX;
  }
  public double getX() {
    return myCenterX;
  }
  public double getY() {
    return myCenterY;
  }

  public void move () {
    turn(rotSpeed);
  }
}
