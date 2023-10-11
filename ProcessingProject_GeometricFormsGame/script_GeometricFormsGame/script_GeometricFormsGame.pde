// Variáveis
private int pontuacao;
private float timerGerarForma, timerDesenharForma;
private Forma f;

// Métodos do Processing
public void setup()
{
  size(800, 600);
  
  timerGerarForma = 0;
  timerDesenharForma = 500;
}
public void draw()
{
  background(0);
  
  GerarForma();
  DesenharPontuacao();
}
public void mousePressed()
{
  SomarPontos();
}


// Métodos Personalizados
public void GerarForma()
{
  if (millis() >= timerGerarForma)
  {
    int f_i = (int)random (1, 3);
    
    switch (f_i)
    {
      case 1:
        f = new Circulo();
        break;
      
      case 2:
        f = new Retangulo();
        break;
    }
    
    f.Inicializar(random(f.GetMinWidth(), f.GetMaxWidth() + 1), random(f.GetMinHeight(), f.GetMaxHeight() + 1));
    timerGerarForma += 1000;
  }
  else if (millis() <= timerGerarForma - timerDesenharForma)
  { 
    f.Desenhar();
  }
}
public void SomarPontos()
{
  if(f.Detectar())
    pontuacao += f.GetPontos();
}
public void DesenharPontuacao()
{
  fill(255);
  textSize(50);
  text("" + pontuacao, width / 2 - textWidth("" + pontuacao) / 2, height / 8 - textAscent() / 2);
}
