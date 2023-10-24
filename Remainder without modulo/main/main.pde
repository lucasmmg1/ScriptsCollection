void setup()
{
  GetRemainder(5, 2);
}

void GetRemainder(int n1, int n2)
{
  println("The remainder of the division between " + n1 + " and " + n2 + " is " + (n1 - n2 * (n1 / n2)));
}
