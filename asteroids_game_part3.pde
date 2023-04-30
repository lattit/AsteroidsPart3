Spaceship bob = new Spaceship();
Star[] nightSky = new Star[200];
ArrayList <Asteroid> myAsteroid = new ArrayList <Asteroid> ();
ArrayList <Bullets> shots = new ArrayList <Bullets>();
int astroid= 25;

public void setup()
{
  size (500, 500);
  for (int i =0; i < nightSky.length; i++) {
    nightSky[i]= new Star();
  }

  for (int i=0; i<astroid; i++) {
    myAsteroid.add(new Asteroid());
  }
}


public void draw()
{
  background (0);

  for (int i = 0; i < nightSky.length; i++) {
    nightSky[i].show();
  }

  bob.show();
  bob.move();

  for (int i=myAsteroid.size()-1; i>=0; i--)
  {
    Asteroid A = myAsteroid.get(i);
    A.move();
    A.show();
    float d = dist((float)bob.getX(), (float)bob.getY(), (float)A.getX(), (float)A.getY());
    if (d<25) {
      myAsteroid.remove(i);
    } else if (A.collide()) {
      myAsteroid.remove(i);
    }
  }

  for (int i=shots.size()-1; i>=0; i--) {
    
    shots.get(i).move();
    shots.get(i).show();
    
    if (shots.get(i).getX()>width) {
      
      shots.remove(i);
      
    } else if (shots.get(i).getY()>height) {
      
      shots.remove(i);
      
    } else if (shots.get(i).getY()<0) {
      
      shots.remove(i);
      
    } else if (shots.get(i).getX()<0) {
      
      shots.remove(i);
      
    }
  }
}
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
