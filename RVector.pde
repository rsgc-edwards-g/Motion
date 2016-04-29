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
  
  void sub(RVector v) {
    x = x - v.x;
    y = y - v.y;
  }
  
  void mult(float n) {
    x = n * x;
    y = n * y;
  }
  
  void div(float n) {
    x = x / n;
    y = y / n;
  }
  
  // vector magnitude (length)
  float mag(){
   return sqrt(x*x + y*y); 
  }
  
  // normalize the vector (make the vector a unit vector)
  void normalize(){
   float length = mag(); 
   if (length != 0){
     div(length);
   }
  }
  
}