int valores[];
boolean encontrou;

void setup()
{
  valores = new int[25];
  encontrou = false;
  
  for(int x = 0; x < valores.length; x++)
  {
    valores[x] = parseInt(random(0, 146));
  }
  
  EncontrarValor(12);
}

void EncontrarValor(int valorParaBuscar)
{
  int index = 0;
  
  for(int x = 0; x < valores.length; x++)
    if(valorParaBuscar == valores[x])
    {
      encontrou = true;
      index = valores[x];
    }
  
  if(encontrou)
    println("O número " + valorParaBuscar + " foi encontrado na posição " + index);
  else
  {
    println("O número " + valorParaBuscar + " não foi encontrado");
  }
}
