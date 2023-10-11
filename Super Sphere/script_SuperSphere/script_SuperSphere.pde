import peasy.*;

int resolution;
float r;
PVector[][] vertex;
PeasyCam cam;

public void setup()
{
  size(800, 600, P3D);
  colorMode(HSB);
  
  Setup();
}
public void draw()
{
  Show();
}
private void Setup()
{
  resolution = 100;
  r = 200;
  cam = new PeasyCam(this, 750);
  
  SetupSphere();
}
private void Show()
{
  background(0);
  noStroke();
  lights();
  
  ShowSphere();
}
private void SetupSphere()
{
  vertex = new PVector[resolution + 1][resolution + 1];
  
  for (int i = 0; i < resolution + 1; i++)
  {
    float latitude = map (i, 0, resolution, 0, PI);
    
    for (int j = 0; j < resolution + 1; j++)
    {
      float longitude = map(j, 0, resolution, 0, TWO_PI);
      vertex[i][j] = new PVector(r * sin(latitude) * cos(longitude), r * sin(latitude) * sin(longitude), r * cos(latitude));
    }
  }
}
private void ShowSphere()
{
  for (int i = 0; i < resolution; i++)
  {
    float hue = map(i, 0, resolution, 0, 255 * 6);
    fill(hue % 255, 255, 255);
    
    beginShape(TRIANGLE_STRIP);
    for (int j = 0; j < resolution + 1; j++)
    {
      PVector v1 = vertex[i][j];
      PVector v2 = vertex[i + 1][j];
      
      vertex(v1.x, v1.y, v1.z);
      vertex(v2.x, v2.y, v2.z);
    }
    endShape();
  }
}
