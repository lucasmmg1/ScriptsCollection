import peasy.*;

int resolution;
float r, hueOffset;
boolean isMulticolorEnabled;
float[][] shape;
PVector[][] vertex;
PeasyCam cam;

public void setup()
{
  size(800, 600, P3D);
  colorMode(HSB);
  
  cam = new PeasyCam(this, 750);
  Setup();
}
public void draw()
{
  background(0);
  noStroke();
  noCursor();
  lights();
  
  Show();
}
public void keyPressed()
{
  if (key == 'c' || key == 'C')
    isMulticolorEnabled = !isMulticolorEnabled;
}
private void Setup()
{
  resolution = 200;
  r = 200;
  isMulticolorEnabled = false;
  
  SetupShape();
  SetupSuperShape();
}
private void Show()
{
  ShowSuperShape();
}
private void SetupSuperShape()
{
  vertex = new PVector[resolution + 1][resolution + 1];
    
  for (int i = 0; i < resolution + 1; i++)
  {
    float latitude = map (i, 0, resolution, -HALF_PI, HALF_PI);
    float r2 = SetupSuperShapeRadius(latitude, shape[1][0], shape[1][1], shape[1][2], shape[1][3], shape[1][4], shape[1][5]);
      
    for (int j = 0; j < resolution + 1; j++)
    {
      float longitude = map(j, 0, resolution, -PI, PI);
      float r1 = SetupSuperShapeRadius(longitude, shape[0][0], shape[0][1], shape[0][2], shape[0][3], shape[0][4], shape[0][5]);
        
      vertex[i][j] = new PVector(r * r1 * cos(longitude) * r2 * cos(latitude), r * r1 * sin(longitude) * r2 * cos(latitude), r * r2 * sin(latitude));
    }
  }
}
private void ShowSuperShape()
{
  hueOffset += 5;
  
  for (int i = 0; i < resolution; i++)
  {
    fill(255);
    float hue = map(i, 0, resolution, 0, 255 * 6);
    
    if (isMulticolorEnabled)
      fill((hue + hueOffset) % 255, 255, 255);
      
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
private float SetupSuperShapeRadius(float theta, float m, float n1, float n2, float n3, float a, float b)
{
  float superShapeRadius = 0;
  
  float t1 = abs((1 / a) * cos(m * theta / 4));
  t1 = pow(t1, n2);
    
  float t2 = abs((1 / b) * sin(m * theta / 4));
  t2 = pow(t2, n3);
    
  float t3 = t1 + t2;
  t3 = pow(t3, -1 / n1);
    
  superShapeRadius = t3;
  return superShapeRadius;
}
private void SetupShape()
{
  shape = new float[2][6];
  shape[0][0] = 7;
  shape[0][1] = 0.2f;
  shape[0][2] = 1.7f;
  shape[0][3] = 1.7f;
  shape[0][4] = 1;
  shape[0][5] = 1;
    
  shape[1][0] = 7;
  shape[1][1] = 0.2f;
  shape[1][2] = 1.7f;
  shape[1][3] = 1.7f;
  shape[1][4] = 1;
  shape[1][5] = 1;
}
