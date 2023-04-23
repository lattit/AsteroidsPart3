class Asteroid extends Floater {
  private double rotSpeed;
  //private int myNum;
  public Asteroid() {
    rotSpeed= ((double)(Math.random() *100));
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
    myColor= 100;
    myPointDirection = (int)(Math.random()*200);
  }

  //public void Floater(int num_) {
  //  myNum = num_;
  // }
  public double getNum() {
    return myCenterX;
  }
  public double getY() {
    return myCenterY;
  }
  //  public void setrotSpeed(double x) {
  //    rotSpeed = x;
  // }

  //}


  public void move () {
    turn(rotSpeed);

    myCenterX +=myXspeed;
    myCenterY +=myYspeed;

    if (myCenterX> width) {

      myCenterX=0;
    } else if (myCenterX<0) {

      myCenterX=width;
    }
    if (myCenterY>height) {

      myCenterY=0;
    } else if (myCenterY<0) {

      myCenterY=height;
    }
    //super.move();
  }
}
