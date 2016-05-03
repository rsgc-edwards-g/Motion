
class Mover {

  float radius;
  RVector location;
  RVector velocity;
  RVector acceleration;

  Mover() {

    radius = 10;
    location = new RVector(random(width), random(height));
    velocity = new RVector(random(-4, 4), random(-4, 4));
    //acceleration = new RVector(random(-0.05, 0.05), random(-0.05, 0.05));
  }

  // update position
  void update() {
    // Change velocity first
    acceleration = RVector.random2D();
    acceleration.mult(2);
    velocity.add(acceleration);
    velocity.limit(10);
    // Move the ball according to it's velocity and acceleration
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

  void checkCollision(Mover b) {
    RVector hyp = RVector.sub(location, b.location);

    if (hyp.mag() <= radius + b.radius) {
      velocity.mult(-1);
      b.velocity.mult(-1);
    }
  }

  // check for edges
  void checkEdges() {

    // Bounce if needed
    if (location.x > width) {
      location.x = 0;
    } else if (location.x < 0) {
      location.x = width;
    }
    if (location.y > height) {
      location.y = 0;
    } else if (location.y < 0) {
      location.y = height;
    }
  }
}