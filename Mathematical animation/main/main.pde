int NUM_LINES = 10;
float distance;

void setup()
{
  size(800, 600);
}

void draw()
{
  background(20);
  stroke(255);
  strokeWeight(5);
  
  translate(width / 2, height / 2);
  
  for (int i = 0; i < NUM_LINES; i++)
    DrawFirstCombination(distance + i);
    
  for (int i = 0; i < NUM_LINES; i++)
    DrawSecondCombination(distance + i);
    
  distance += 0.25;
}

void DrawFirstCombination(float d)
{
  stroke(255, 235, 235);
  
  float x = sin(d / 10) * 125 + sin(d / 5) * 20;
  float y = cos(-d / 10) * 75 + sin(d / 5) * 50;
  float w = sin(d / 10) * 200 + sin(d) * 2 + cos(d);
  float h = -cos(d / 20) * 225 + cos(d / 12) * 20;
  
  line(x, y, w, h);
}

void DrawSecondCombination(float d)
{
  stroke(255, 75, 75);
  
  float x = cos(-d / 10) * 75 + sin(d / 5) * 50;;
  float y = sin(d / 10) * 125 + sin(d / 5) * 20;
  float w = -cos(d / 20) * 225 + cos(d / 12) * 20;
  float h = sin(d / 10) * 200 + sin(d) * 2 + cos(d);
  
  line(x, y, w, h);
}
