int NUM_LINES = 10;

float t;

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
    DrawFirstCombination(t + i);
    
  for (int i = 0; i < NUM_LINES; i++)
    DrawSecondCombination(t + i);
    
  t += 0.25;
}

void DrawFirstCombination(float t)
{
  stroke(255, 235, 235);
  
  float x = sin(t / 10) * 125 + sin(t / 5) * 20;
  float y = cos(-t / 10) * 75 + sin(t / 5) * 50;
  float w = sin(t / 10) * 200 + sin(t) * 2 + cos(t);
  float h = -cos(t / 20) * 225 + cos(t / 12) * 20;
  
  line(x, y, w, h);
}

void DrawSecondCombination(float t)
{
  stroke(255, 75, 75);
  
  float x = cos(-t / 10) * 75 + sin(t / 5) * 50;;
  float y = sin(t / 10) * 125 + sin(t / 5) * 20;
  float w = -cos(t / 20) * 225 + cos(t / 12) * 20;
  float h = sin(t / 10) * 200 + sin(t) * 2 + cos(t);
  
  line(x, y, w, h);
}
