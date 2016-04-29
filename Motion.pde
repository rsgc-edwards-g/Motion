// Global variables
int numBalls = 5000;
Bouncer ball[] = new Bouncer[numBalls];


// Runs once
void setup() {
  size(640, 360);
  background(255);
  
  // Create an instance of the Bouncer class
  for (int i = 0; i < ball.length; i++){
   ball[i] = new Bouncer(); 
  }
 

}

// Runs forever
void draw() {
  
  // Clear the background
  background(255);
  
  // Move, check for edges (bounce if needed) then display
  for (int j = 0; j < numBalls; j++){
    ball[j].update();
    ball[j].checkEdges();
    ball[j].display();
    
    for (int a = 0; a < numBalls; a++){
     if (a != j) {
      ball[j].checkCollision(ball[a]); 
     }
    }
  }
}