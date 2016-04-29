// Global variables

// Runs once
void setup() {
  size(640, 360);
  background(255);

}

// Runs forever
void draw() {
  
  // Clear the background
  background(255);
  
  RVector mouse = new RVector( mouseX, mouseY);
  RVector center = new RVector( width / 2, height / 2);
  
  // use vector subtraction to determine the length of the line
  mouse.sub(center);
  
  // move the origin in the center of the screen
  translate(width/2, height/2);
  
  // draw the line from the origin 
  line(0, 0, mouse.x, mouse.y);
}