void setup()
{
  //Para o primeiro parâmetro, digite o valor da altura do triângulo. Para o segundo valor, digite 'p' para um triângulo par ou 'i' para um triângulo ímpar
  DesenharTrianguloDeAsterisco(8, 'j');
}






































// PEDAÇO DO CÓDIGO QUE NÃO TENHO ACESSO
void DesenharTrianguloDeAsterisco(int i, char c)
{
  switch (c)
  {
    case 'p':
    case 'P':
      DesenharTrianguloDeAsterisco(i + 1, i + 1, 2);
      break;
      
    case 'i':
    case 'I':
      DesenharTrianguloDeAsterisco(i, i, 3);
      break;
      
    default:
      println("Opção inválida");
  }
}
void DesenharTrianguloDeAsterisco(int o, int i, int b)
{  
  if (i > 0)
  {
    DesenharTrianguloDeAsterisco(o, i - 1, b);
  
    for (int x = 0; x < o - (i - 1); x++)
      print(" ");
  
    for (int x = 2 - b; x < (i - 1) * 2; x++)
      print("*");
      
    println(" ");
  }
}
