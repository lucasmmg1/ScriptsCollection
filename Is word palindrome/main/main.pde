String palavraInvertida;
char[] letras, palavraDigitada; 
boolean isPalindromo;

void setup()
{
  palavraInvertida = "";
  isPalindromo = false;
  
  ChecarPalindromo("ovo"); //<>//
}

void ChecarPalindromo(String palavra)
{
  palavraDigitada = new char[palavra.length()];
  letras = new char[palavra.length()];
  
  for (int x = 0; x < palavra.length(); x++) //<>//
  {
    palavraDigitada[x] = palavra.charAt(x);
    letras[x] = palavra.charAt(x);
  }
    
  reverse(letras);
  
  for (int x = 0; x < letras.length; x++)
  {
    if(palavraDigitada[x] == letras[(letras.length - 1) - x])
      isPalindromo = true;
    else
      isPalindromo = false;
  }
    
  if(isPalindromo)
    println("A palavra " + palavra + " é palíndromo");
  else
    println("A palavra " + palavra + " não é palíndromo"); //<>// //<>//
}
