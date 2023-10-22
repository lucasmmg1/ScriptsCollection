void setup()
{
  println("O termo é: " + AcharTermo(42));
}

int AcharTermo(int t)
{
  int termoAtual, termoAnterior, temp;
  
  termoAtual = 1;
  termoAnterior = temp = 0;
  
  for (int x = 1; x < t; x++)
  {
    temp = termoAtual;
    termoAtual += termoAnterior;
    termoAnterior = temp;
  }
  
  return termoAtual;
}
