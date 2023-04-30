class Bullets extends Floater {

  public Bullets (Spaceship theShip) {
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myXspeed = theShip.getmyXspeed();
    myYspeed = theShip.getmyYspeed();
    myPointDirection = theShip.getPointDirection();
    accelerate(.6);
  }
  public void show () {
    fill(250, 0, 0);
    ellipse((float)myCenterX, (float)myCenterY, 11, 11);
  }

  public double getX() {
    return myCenterX;
  }
  public double getY() {
    return myCenterY;
  }
  public void move() {
    myCenterX += myXspeed;
    myCenterY += myYspeed;
  }
  public double getPointDirection() {
    return myPointDirection;
  }
  public double getmyXspeed() {
    return myXspeed;
  }
  public double getmyYspeed() {
    return myYspeed;
  }
}
