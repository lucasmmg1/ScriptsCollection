PVector posA, posB, sizeA, sizeB;

void setup()
{
  size(800, 600);
  RandomizePosition();
}
void draw()
{
  background(255);
  DetectSquareCollision();
  DrawSquare();
}
void keyPressed()
{
  switch (str(key).toLowerCase())
  {
    case "r":
      RandomizePosition();
      break;
  }
}

void RandomizePosition()
{
  sizeA = new PVector(random(6, 255), random(6, 255));
  sizeB = new PVector(random(6, 255), random(6, 255));
  
  posA = new PVector(random(width), random(height));
  posB = new PVector(random(width), random(height));
}
void DetectSquareCollision()
{
  if ((posA.x + sizeA.x >= posB.x && posA.x <= posB.x + sizeB.x) && (posA.y + sizeA.y >= posB.y && posA.y <= posB.y + sizeB.y))
    fill(255, 0, 0);
  else
    fill(0, 0, 255);
}
void DrawSquare()
{
  rect(posA.x, posA.y, sizeA.x, sizeA.y);
  rect(posB.x, posB.y, sizeB.x, sizeB.y);
}
