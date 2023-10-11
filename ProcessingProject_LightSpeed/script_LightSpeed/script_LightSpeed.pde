float speed = map(50, 0, width, 0, 50);
Star[] stars = new Star[500];

void setup()
{
  size (800, 600);
  
  for (int i = 0; i < stars.length; i++)
  {
    stars[i] = new Star();
  }
}

void draw()
{
  background(0);
  translate(width / 2, height / 2);
  
  for (int i = 0; i < stars.length; i++)
  {
    stars[i].update();
    stars[i].show();
  }
}
