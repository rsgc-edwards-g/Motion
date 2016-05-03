// Global variables
int numBalls = 5;
Mover ball[] = new Mover[numBalls];

// Runs once
void setup() {
  size(640, 360);
  background(255);

  // Create an instance of the Bouncer class 
  for (int i = 0; i < ball.length; i++) {
    ball[i] = new Mover();
  }
}

// Runs forever
void draw() {

  // Clear the background
  background(255);

  // RVector mouse = new RVector( mouseX, mouseY);
  // RVector center = new RVector( width / 2, height / 2);

  for (int i = 0; i < numBalls; i++) {
    ball[i].update();
    ball[i].checkEdges();
    ball[i].display();

   /* for (int j = 0; j < numBalls; j++) {
      if (j != i) {
        ball[i].checkCollision(ball[j]);
      }
    }*/
  }
}