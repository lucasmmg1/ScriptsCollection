void setup()
{
  size(800, 600);
  fill(random(0, 255), random(0, 255), random(0, 255));
}
void draw()
{
  rect(width / 2 - (width / 2) / 2, height / 2 - (height / 2) / 2, width / 2, height / 2);
}
