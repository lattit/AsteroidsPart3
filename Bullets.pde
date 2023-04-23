class Bullets extends Floater {

  public Bullets (Spaceship theShip) {
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myXspeed = theShip.getmyXspeed();
    myYspeed = theShip.getmyYspeed();
    myPointDirection = theShip.getPointDirection();
    accelerate(.6);
  }

  public void move() {
    myCenterX += myXspeed;
    myCenterY += myYspeed;
  }

  public void show () {
    fill(250, 0, 0);
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
}
