class RVector {

  // Data
  float x;
  float y;

  // Constructor
  RVector(float x_, float y_) {

    x = x_;
    y = y_;
  }

  RVector(RVector v) {
    x = v.x;
    y = v.y;
  }

  void add(RVector v) {
    x = x + v.x;
    y = y + v.y;
  }

  static RVector add(RVector v1, RVector v2) {
    RVector v3 = new RVector(v1.x + v2.x, v1.y + v2.y);

    return v3;
  }

  void sub(RVector v) {
    x = x - v.x;
    y = y - v.y;
  }

  static RVector sub(RVector v1, RVector v2) {
    RVector v3 = new RVector(v1.x - v2.x, v1.y - v2.y);

    return v3;
  }

  void mult(float n) {
    x = n * x;
    y = n * y;
  }

  static RVector mult(RVector v1, float n) {
    RVector v3 = new RVector(v1.x * n, v1.y * n);

    return v3;
  }

  void div(float n) {
    x = x / n;
    y = y / n;
  }

  static RVector div(RVector v1, float n) {
    RVector v3 = new RVector(v1.x / n, v1.y / n);

    return v3;
  }

  // vector magnitude (length)
  float mag() {
    return (float)Math.sqrt(x*x + y*y);
  }

  // normalize the vector (make the vector a unit vector)
  void normalize() {
    float length = mag(); 
    if (length != 0) {
      div(length);
    }
  }
  
  // limit the magnitude of a vector
  void limit(float max) {
    if (mag() > max){
      normalize();
      mult(max);
    }
  }
  
  // return a random 2-D RVector with a max magnitude of 1 pointing random direction
  static RVector random2D(){
   
    return new RVector((float)Math.random() * 2 - 1, (float)Math.random() * 2 - 1);
  }
}