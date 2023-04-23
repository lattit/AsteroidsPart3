class Spaceship extends Floater {

  public Spaceship() {
    myColor = 255;
    corners =3 ;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0]=-8;
    yCorners[0]=-8;
    xCorners[1]=16;
    yCorners[1]=0;
    xCorners[2]=-8;
    yCorners[2]=8;
    myCenterX = myCenterY = 250;
    myXspeed = myYspeed = 0;
    myPointDirection = (int)(Math.random()*360);
  }
  
  
public double getX(){return myCenterX;}
public double getY(){return myCenterY;}
public double getPointDirection(){return myPointDirection;}
public double getmyXspeed(){return myXspeed;}
public double getmyYspeed(){return myYspeed;}

  public void setXspeed(double x) {
    myXspeed = x;
  }
  //  public void setYspeed(double y) {
  //   myYspeed = y;
  //  }
  public void hyperspace() {
    myCenterX=(int)(Math.random()*width);
    myCenterY=(int)(Math.random()*height);
    myXspeed=0;
    myYspeed=0;
    myPointDirection = 0;
  }
}
