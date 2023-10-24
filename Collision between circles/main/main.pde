PVector posA, posB, sizeA, sizeB;

void setup()
{
  size(800, 600);
  RandomizePosition();
}
void draw()
{
  background(255);
  DetectCircleCollision();
  DrawCircle();
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
  sizeA = new PVector(random(25, 150), random(25, 150));
  sizeB = new PVector(random(25, 150), random(25, 150));
  
  posA = new PVector(random(width), random(height));
  posB = new PVector(random(width), random(height));
}
void DetectCircleCollision()
{
  var dX = posA.x - posB.x;
  var dY = posA.y - posB.y;
  var distance = sqrt(dX * dX + dY * dY);

  if (distance < sizeA.x / 2 + sizeB.x / 2)
    fill(255, 0, 0);
  else
    fill(0, 0, 255);
}
void DrawCircle()
{
  ellipse(posA.x, posA.y, sizeA.x, sizeA.y);
  ellipse(posB.x, posB.y, sizeB.x, sizeB.y);
}
