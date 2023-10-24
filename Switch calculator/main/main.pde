public void setup()
{
  Calculate(2, 7, '*');
}

void Calculate(int n1, int n2, char operation)
{
  switch (str(operation).toLowerCase())
  {
    case "+":
      println("The sum between " + n1 + " and " + n2 + " equals to " + (n1 + n2));
      break;

    case "-":
      println("The subtraction between " + n1 + " and " + n2 + " equals to " + (n1 - n2));
      break;

    case "*":
      println("The multiplication between " + n1 + " and " + n2 + " equals to " + (n1 * n2));
      break;

    case "/":
      println("The division between " + n1 + " and " + n2 + " equals to " + (n1 / n2));
      break;
      
    default:
      println("Invalid operation!") ;
  }
}
