float n1, n2, resultado, codigoDeErro;
char operacao;

public void setup()
{
  n1 = 2;
  n2 = 7;
  resultado = codigoDeErro = 0;
  operacao = 'j'; 
  
  switch (Character.toString(operacao).toLowerCase().charAt(0))
  {
    case 'a':
      resultado = n1 + n2;
      break;

    case 's':
      resultado = n1 - n2;
      break;

    case 'm':
      resultado = n1 * n2;
      break;

    case 'd':
      resultado = n1 / n2;
      break;
      
    default:
      codigoDeErro = 1;
      
  }
  
  println(codigoDeErro == 0 ? "O resultado da conta entre os dois números é " + resultado : "A operação digitada é inválida");
  exit();
}
