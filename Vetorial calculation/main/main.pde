float numberToCalculate;

void setup()
{
  numberToCalculate = 4;
}
void draw()
{
  println(numberToCalculate + "! equals to " + VetorialCalculation(numberToCalculate));
}

float VetorialCalculation(float n)
{
  float result = 1;
  
  for(int x = 1; x <=n; x++)
    result *= x;
  
  return result;
}
