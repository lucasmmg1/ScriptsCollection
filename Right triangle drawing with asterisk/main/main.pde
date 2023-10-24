void setup()
{
  var baseValue = 8;
  DrawAsteriskTriangle(baseValue);
}

void DrawAsteriskTriangle(int o)
{
  if (o == 0) return;
  DrawAsteriskTriangle(o - 1);
  
  for(int x = 0; x < o; x++)
    print("*");
  
  println(" ");
}
