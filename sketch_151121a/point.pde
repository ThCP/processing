class Point {
  float xpos, ypos;
  float radius;
  Point (float x, float y) {
    xpos = x;
    ypos = y;
    radius = 10;
  }
  
  void drawPoint() {
    ellipse (xpos, ypos, radius, radius);
  }
}