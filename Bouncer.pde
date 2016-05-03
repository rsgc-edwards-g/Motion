class Bouncer {

  RVector location;
  RVector velocity;
  float radius;

  // constructor
  Bouncer() {

    radius = 10;
    location = new RVector(random(width), random(height));
    velocity = new RVector(1, 3.3);
  }

  // update position
  void update() {
    // Move the ball according to it's speed
    location.add(velocity);
  }

  // show the object
  void display() {
    // Visual characteristics of the ball
    stroke(0);
    fill(175);

    // Display the ball at the location (x, y)
    ellipse(location.x, location.y, 2*radius, 2*radius);
  }

  // check for edges
  void checkEdges() {

    // Bounce if needed
    if ((location.x > width) || (location.x < 0)) {
      velocity.x = velocity.x * -1;
    }
    if ((location.y > height) || (location.y < 0)) {
      velocity.y = velocity.y * -1;
    }
  }

  // check for collision
  void checkCollision(Bouncer b) {
    // get the vertical length of the triangle
    float vertical = location.y - b.location.y;
    // get horizontal length
    float horizontal = location.x - b.location.x;
    // get the hypotenuse
    float hypotenuse = sqrt(pow(vertical, 2) + pow(horizontal, 2));
    // check for collision
    if (hypotenuse <= radius + b.radius) {
      // ball 1
      velocity.x = velocity.x * -1;
      velocity.y = velocity.y * -1;

      // ball 2
      b.velocity.x = b.velocity.x * -1;
      b.velocity.y = b.velocity.y * -1;
    }
  }

  void vCheckCollision(Bouncer b) {
    RVector hyp = RVector.sub(location, b.location);
    
    if (hyp.mag() <= radius + b.radius) {
     velocity.mult(-1);
     b.velocity.mult(-1);
    }
  }
}