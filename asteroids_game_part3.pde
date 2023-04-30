///Asteroid me = new SubClass(3);
ArrayList <Asteroid> myAsteroid = new ArrayList <Asteroid> ();
//int nAsteroid =10;
//Asteroid nAs;
ArrayList <Bullets> shots = new ArrayList <Bullets> ();
Spaceship bob = new Spaceship();
Star[] nightSky = new Star[200];
//int myAsteroidd= 10;

public void setup()
{
  size (500, 500);
  for (int i =0; i < nightSky.length; i++) {
    nightSky[i]= new Star();
  }
  for (int i=0; i <=15; i++) {
    myAsteroid.add(new Asteroid());
  }
  //for (int i=0; i < myAsteroidd; i++) {
  //  Asteroid myAsteroidd = new Asteroid();
  // myAsteroid.add(myAsteroidd);
  //}
  //for (int i=0; i <=15; i++) {
  //   shots.add(new Bullets(Spaceship theShip));
  //  }
}

public void draw()
{
  background (0);
  bob.show();
  bob.move();
  for (int i = 0; i < nightSky.length; i++) {
    nightSky[i].show();
  }
  //System.out.println(me.getNum());

  // for (int i= myAsteroid.size()-1; i>=0; i--) {
  // Asteroid myAsteroid2= myAsteroid.get(i);
  // Boolean collided = myAsteroid2.collide();
  //if (collided) {
  //  myAsteroid.remove(i);
  // break;
  //}
  // }
  for (int i =0; i < myAsteroid.size(); i++) {
    myAsteroid.get(i).move();
    myAsteroid.get(i).show();
    float d = dist((float) bob.getX(), (float)bob.getY(), (float)myAsteroid.get(i).getX(), (float)myAsteroid.get(i).getY());
    if (d < 10)
      myAsteroid.remove(i);
      else {break;}
    //break;
  }
 



  //for (int i =0; i< myAsteroid.size(); i++) {
  //myAsteroid.get(i).show();
  //}

  for (int i = 0; i < shots.size(); i++) {
    shots.get(i).move();
    shots.get(i).show();
    float d = dist((float) bob.getX(), (float)bob.getY(), (float)shots.get(i).getX(), (float)shots.get(i).getY());
    if (d < 10)
    shots.remove(i);
    }
    //  for (int i =0; i< myAsteroid.size(); i++) {
    //  myAsteroid.get(i).move();
    //   myAsteroid.get(i).show();
    //float d = dist((float) bob.getX(), (float)bob.getY(), (float)myAsteroid.get(i).getX(), (float)myAsteroid.get(i).getY());
    //   if (d < 10)
    //    myAsteroid.remove(i);
  }
//}

public void keyPressed() {
  if (key == 'h') {
    bob.hyperspace();
  }
  if (keyCode == UP) {
    bob.myCenterY -=6;
  }
  if (keyCode == DOWN) {
    bob.myCenterY +=6;
  }
  if (keyCode == LEFT) {
    bob.myCenterX -=6;
  }
  if (keyCode == RIGHT) {
    bob.myCenterX +=6;
  } else if (key == ' ') {
    shots.add(new Bullets(bob));
  }
}
