int PointArraySize = 6;
int LineArraySize = PointArraySize*PointArraySize/4;
int startX = 200;
int startY = 150;

Point[] points = new Point[PointArraySize]; 
Line[] lines = new Line[LineArraySize];

void setup ()
{
  frameRate(60);
  size(800,600);
  init (PointArraySize, startX, startY);
  
  int i;
  background(255);
  for (i = 0; i < PointArraySize; i++) {
    points[i].drawPoint();
  }
  
  for ( i = 0; i < LineArraySize; i++) {
    lines[i].drawLine();
  }

}

void draw (){
   Color red = new Color (255, 0, 0);
   Color black = new Color (0,0,0);
   int thisLine = (frameCount-1)%LineArraySize;
    lines[thisLine].setColor(red);
    lines[thisLine].drawLine();
    println("First ", thisLine);
    delay(1000);
    redraw();
    lines[(thisLine+1)%LineArraySize].setColor(black);
    lines[(thisLine+1)%LineArraySize].drawLine();
    println("Second ", thisLine);
 
      //delay(1000);  
 }

void init (int PointArraySize, int startX, int startY) {
  int X, Y;
  int k = 0;
  X = startX;
  Y = startY;
  
  for (int i = 0; i < PointArraySize; i+=2) {
    points[i] = new Point(X, Y);
    points[i+1] = new Point(X + 400, Y);
    Y+=100;    
  }
  
  Color c = new Color (0,0,0);
  for (int i = 0; i < PointArraySize; i+=2) {
    for (int j = 1; j < PointArraySize; j+=2) {
      lines[k] = new Line (points[i].xpos, points[i].ypos, points[j].xpos, points[j].ypos, c);
      k++;
    }
  }

}