class Line {
  float X1, X2, Y1, Y2;
  Color c;
  Line (float X1, float X2, float Y1, float Y2, Color c) {
    this.X1 = X1;
    this.X2 = X2;
    this.Y1 = Y1;
    this.Y2 = Y2;
    this.c = c;
  }
  
  void drawLine () {
    line (X1, X2, Y1, Y2);
    stroke (c.R, c.G, c.B);
  }
  
  void setColor (Color c) {
    this.c = c;
    //stroke (c.R, c.G, c.B);
  }
}