void draw()
{
  println("O resultado fatorial do número passado é " + CalcularVetorial(4));
}

float CalcularVetorial(float numero)
{
  float resultado = 1;
  
  for(int x = 1; x <= numero; x++)
    resultado *= x;
  
  return resultado;
}
