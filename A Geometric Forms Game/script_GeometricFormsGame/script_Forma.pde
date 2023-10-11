private class Forma
{
  // Variáveis
  protected int pontos;
  protected float x, y, largura, altura;
  protected color cor;
  
  private float minWidth, maxWidth, minHeight, maxHeight;
  
  // Métodos Construtores
  Forma()
  {
    pontos = 0;
    
    minWidth = minHeight = 100;
    maxWidth = maxHeight = 200;
    
    x = random(0, width);
    y = random(0, height);
  }
  
  
  // Métodos Personalizados
  void Inicializar(float largura, float altura)
  {
    this.largura = largura;
    this.altura = altura;
    
    cor = color(random(0, 256), random(0, 256), random(0, 256));
  }
  void Desenhar()
  {
    println("X: " + x);
    println("Y:" + y);
  }
  boolean Detectar()
  {
    return false;
  }
  
  
  // Métodos Get
  int GetPontos()
  {
    return pontos;
  }
  
  float GetMinWidth()
  {
    return minWidth;
  }
  float GetMaxWidth()
  {
    return maxWidth;
  }
  float GetMinHeight()
  {
    return minHeight;
  }
  float GetMaxHeight()
  {
    return maxHeight;
  }
}
