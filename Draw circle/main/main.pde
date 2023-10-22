void setup()
{
  size(500, 500);
  //fullScreen(SPAN);
  surface.setResizable(true);
}

void draw()
{
  DrawEllipse();
}

void DrawEllipse()
{
  stroke(#ffffff);
  fill(#34495e);
  ellipse(mouseX, mouseY, 50, 50); 
}
