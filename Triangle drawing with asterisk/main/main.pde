void setup()
{
  var baseValue = 8;

  println("Even Triangle:");
  DrawAsteriskTriangle(baseValue + 1, baseValue + 1, 2);
  
  println("\n");
  println("\n");
  
  println("Odd Triangle:\n");
  DrawAsteriskTriangle(baseValue, baseValue, 3);
}

void DrawAsteriskTriangle(int o, int i, int b)
{  
  if (i > 0)
  {
    DrawAsteriskTriangle(o, i - 1, b);
  
    for (int x = 0; x < o - (i - 1); x++)
      print(" ");
  
    for (int x = 2 - b; x < (i - 1) * 2; x++)
      print("*");
      
    println(" ");
  }
}
