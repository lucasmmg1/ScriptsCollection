void setup()
{
  GetBiggestCommonDivider(48, 30);
}

void GetBiggestCommonDivider(float n1, float n2)
{
  float a = n1;
  float b = n2;
  float c = 1;
  
  while (a % b > 0)
  {
    c = a % b;
    a = b;
    b = c != 1 ? c : b;
  }
  
  println("The biggest common divider between " + n1 + " and " + n2 + " is " + c);
}
