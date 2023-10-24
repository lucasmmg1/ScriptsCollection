void setup()
{
  FindValue(5);
}

void FindValue(int t)
{
  int current = 1;
  int previous = 0;
  
  for (int x = 1; x < t - 1; x++)
  {
    var tmp = current;
    current += previous;
    previous = tmp;
  }
  
  print("The " + t + " value of Fibonacci is " + (t == 1 ? 0 : current));
}
