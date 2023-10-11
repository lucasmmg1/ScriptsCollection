boolean podeImprimirResultado;
String texto = "";
int num1Temp, num2Temp;


void setup()
{
  size(300, 300);
}
void draw()
{ 
  background(0);
  textSize(20);
  
  if(podeImprimirResultado)
  {
    text("O resto da divisão entre ", width / 2 - textWidth("Digite o primeiro número") / 2, height / 8);
    
    if(num1Temp > num2Temp)
      text(num1Temp + " e " + num2Temp + " é " + CalcularResto(num1Temp, num2Temp), width / 2 - textWidth(num1Temp + " e " + num2Temp + " é " + CalcularResto(num1Temp, num2Temp)) / 2, height / 4);
    else
      text(num2Temp + " e " + num1Temp + " é " + CalcularResto(num1Temp, num2Temp), width / 2 - textWidth(num1Temp + " e " + num2Temp + " é " + CalcularResto(num1Temp, num2Temp)) / 2, height / 4);
  }
  else
  {
    if(num1Temp == 0)
      text("Digite o primeiro número", width / 2 - textWidth("Digite o primeiro número") / 2, height / 8);
    else if(num2Temp == 0)
      text("Digite o segundo número", width / 2 - textWidth("Digite o segundo número") / 2, height / 8);
      
    text(texto, width / 2 - textWidth(texto) / 2, height / 2);
  }
}
void keyPressed()
{
  if(key == '1')
    texto += "1";
  else if(key == '2')
    texto += "2";
  else if(key == '3')
    texto += "3";
  else if(key == '4')
    texto += "4";
  else if(key == '5')
    texto += "5";
  else if(key == '6')
    texto += "6";
  else if(key == '7')
    texto += "7";
  else if(key == '8')
    texto += "8";
  else if(key == '9')
    texto += "9";
  else if(key == '0')
    texto += "0";
    
  if(key == ENTER)
    if(num1Temp == 0)
    {
      num1Temp = int(texto);
      texto = "";
    }
    else
    {
      num2Temp = int(texto);
      texto = "";
      podeImprimirResultado = true;
    }
}

int CalcularResto(int num1, int num2)
{
  if(num1 > num2)
    return num1 - num2 * (num1 / num2);
  else
    return num2 - num1 * (num2 / num1);
}
