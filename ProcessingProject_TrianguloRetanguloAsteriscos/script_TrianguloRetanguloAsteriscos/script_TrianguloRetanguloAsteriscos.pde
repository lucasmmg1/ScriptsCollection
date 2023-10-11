void setup()
{
  DesenharTrianguloComAsterisco(8);
}

void DesenharTrianguloComAsterisco(int valorBase)
{
  int largura = valorBase;
  
  for(int i = 0; i < valorBase; i++)
  {
    for (int x = 0; x < largura; x++)
    {
      print("*");
    }
    
    println("");
    largura--;
  }
}
