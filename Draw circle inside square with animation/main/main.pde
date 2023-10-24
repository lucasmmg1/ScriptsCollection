PVector squareSize, circleSize;
float timer, incrementer;

void setup()
{
  size(600, 600);
  
  squareSize = new PVector(500, 500);
  circleSize = new PVector(500, 500);
  
  incrementer = circleSize.x / 15;
  timer = millis();
}
void draw()
{
  fill(255);
  rect(width / 2 - squareSize.x / 2, height / 2 - squareSize.y / 2, squareSize.x, squareSize.y);
  
   if (millis() >= timer + 2000 / 60 && incrementer > 0)
   {
     timer = millis();
     incrementer -= 1;
   }
   
  fill(255, 0, 0); 
  ellipse(width / 2, height / 2, circleSize.x - 15 * incrementer, circleSize.y - 15 * incrementer);
}
