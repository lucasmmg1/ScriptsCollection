PVector squareSize, circleSize;

void setup()
{
  size(600, 600);
  squareSize = new PVector(500, 500);
  circleSize = new PVector(500, 500);
}
void draw()
{
  background(127);
  
  fill(255);
  rect(width / 2 - squareSize.x / 2, height / 2 - squareSize.y / 2, squareSize.x, squareSize.y);
  
  fill(255, 0, 0);
  ellipse(width / 2, height / 2, circleSize.x, circleSize.y);
}
