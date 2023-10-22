int randomizedNumber, typedNumber, index, currentAttempt, amountOfAttempts;
String textoDigitado;
Boolean podeAtualizarNumero, podeAtualizarTexto, podeDigitar, gameOver, maquinaGanhou;
char tecla, tipo;

void setup()
{
  randomizedNumber = parseInt(random(0, 100));
  index = 0;
  currentAttempt = 0;
  amountOfAttempts = 3;
  textoDigitado = "";
  
  gameOver = false;
  podeAtualizarNumero = false;
  podeAtualizarTexto = true;
  podeDigitar = false;
  maquinaGanhou = false;
  
  tipo = 'q';
}

void draw()
{ 
  if(podeAtualizarTexto)
    AtualizarTexto();
    
  if(podeAtualizarNumero)
    AtualizarNumero();
}

void keyPressed()
{
  switch (gameOver)
  {
    case true:
      OnGameOver();
      break;
    case false:
      OnNewAttempt();
      break;
  }
}

void OnNewAttempt()
{
  switch (index)
  {
    case 0:
      if (str(key).toLowerCase() != "p" && str(key).toLowerCase() != "d") return;
      tipo = str(key.toLowerCase);
      index = 1;
      podeAtualizarTexto = true;
      break;
    case 2:
      switch (tipo)
      {
        case "p":
          switch (str(key).toLowerCase())
          {
            case "s":
              maquinaGanhou = true;
              index = 3;
              podeAtualizarTexto = true;
              break;
            case "n":
              maquinaGanhou = false;
              index = 3;
              podeAtualizarTexto = true;
              break;
            default:
              index = 2;
              println("");
              println("Digite uma opção válida!");
              break;
          }
          break;
        case "d":
          if (!podeDigitar) return;
          if(key == '1' || key == '2' || key == '3' || key == '4' || key == '5' || key == '6' || key == '7' || key == '8' || key == '9' || key == '0')
          {
            tecla = key;
            podeAtualizarNumero = true;
          }
    
          if(keyCode == ENTER && textoDigitado != "")
          {
            if(numeroDigitado > 100 || numeroDigitado < 0)
            {
              println("Digite um número entre 0 e 100!");
              textoDigitado = "";
              podeAtualizarTexto = true;
            }
            else
            {
              print(numeroDigitado);
              index  = 3;
              podeDigitar = false;
              podeAtualizarTexto = true;
            }
          }
          break;
      }
      break;
  }
}
void OnGameOverReached()
{
  switch(str(key).toLowerCase())
  {
    case "s":
      Recomecar();
      break; 
    case "n":
      exit();
      break; 
    default:
      println("\nDigite uma opção válida!");
      break;
  }
}


void AtualizarTexto()
{
  if(index == 0)
  {
    podeAtualizarTexto = false;
    
    for(int x = 0; x < 50; x++)
      println("");
      
    println("Bem-vindo ao 'Adivinhe o número'!");
    println("Como você pretende jogar? Aperta 'd' para descobrir o número que eu vou pensar ou aperte 'p' para pensar em um número para eu descobrir");
  }
  
  switch(tipo)
  {
    case 'd':
      if(chances > 0)
      {
        switch(index)
        {
          case 1:
            for(int x = 0; x < 50; x++)
              println("");
            
            println("Ok. Você terá 4 chances para descobrir o número que eu escolhi.");
            println("Vamos começar!");
        
            index = 2;
            break;
      
          case 2:
            println("");
            
            println("Digite a " + tentativa + " tentativa:");
            podeDigitar = true;
            podeAtualizarTexto = false;
            break;
      
          case 3:
            if(numeroDigitado == numeroRandomizado)
            {
              println("");
              println("");
              
              println("Parabéns! Você acertou!");
              podeAtualizarTexto = false;
          
              println("Deseja jogar novamente? Aperta 's' para sim ou 'n' para não.");
              gameOver = true;
            }
            else
            {
              index = 2;
              chances -= 1;
              tentativa += 1;
          
              println("");
              println("");
          
              if(numeroRandomizado > numeroDigitado)
                println("Você errou! O número que escolhi é maior!");
            
              else if(numeroRandomizado < numeroDigitado)
                println("Você errou! O número que escolhi é menor!");
          
              println("Restam " + chances + " tentativas!");
              textoDigitado = "";
              podeAtualizarTexto = true;
            }
            break;
        }
      }
      else
      {
        println("");
        println("Suas chances acabaram! O número era " + numeroRandomizado + "!");
    
        println("Deseja jogar novamente? Aperta 's' para sim ou 'n' para não.");
        podeAtualizarTexto = false;
        gameOver = true;
      }
      break;
      
    case 'p':
      if(chances > 0)
      {
        switch(index)
        {
          case 1:
            for(int x = 0; x < 50; x++)
              println("");
              
            println("Ok! Só não vale roubar, hein! Terei quatro chances para tentar adivinhar seu número!");
            println("Pense em um número entre 0 e 100!");
            
            index = 2;
            podeAtualizarTexto = true;
            break;
          case 2:
            numeroRandomizado = parseInt(random(0, 100));
            podeAtualizarTexto = false;
            
            println("");
            println("Seu número é " + numeroRandomizado + "? Digite 's' para sim ou 'n' para não");
            break;
          case 3:
            if(maquinaGanhou)
            {
              podeAtualizarTexto = false;
              gameOver = true;
              
              for(int x = 0; x < 50; x++)
                println("");
              
              println("Ha ha! Eu sabia que iria acertar!");
              println("Deseja jogar novamente? Aperte 's' para sim ou 'n' para não");
            }
            else
            {
              for(int x = 0; x < 50; x++)
                println("");
                
              println("Hmmmmm... vou pensar em outro então...");
              index = 2;
              chances--;
            }
            break;
        }
      }
      else
      {
        podeAtualizarTexto = false;
        gameOver = true;
        
        for(int x = 0; x < 50; x++)
          println("");
        
        println("Droga! Você me venceu!");
        println("Deseja jogar novamente? Aperte 's' para sim ou 'n' para não");
      }
      break;
  }
}

void AtualizarNumero()
{
  if(tipo == 'd')
  {
    textoDigitado += str(tecla);
    numeroDigitado = int(textoDigitado);
    podeAtualizarNumero = false;
  }
}

void Recomecar()
{
  if(tipo == 'p')
  {
    numeroRandomizado = 0;
    maquinaGanhou = false;
  }
    
  else if(tipo == 'd')
  {
    numeroRandomizado = parseInt(random(0, 100));
    tentativa = 1;
  }
  
  podeAtualizarTexto = true;
  
  index = 0;
  chances = 4;
  gameOver = false;
  
  tipo = 'q';
}
