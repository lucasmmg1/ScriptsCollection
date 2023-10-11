public class Retangulo extends Forma
{
  // Métodos Construtores
  Retangulo()
  {
    pontos = -1;
  }
  
  
  // Métodos Personalizados
  public void Desenhar()
  {
    fill(cor);
    rect(x, y, largura, altura);
  }
  public boolean Detectar()
  {
    boolean b;
    
    if ((mouseX >= x && mouseX <= x + largura) && (mouseY >= y && mouseY <= y + altura))
      b = true;
    else
      b = false;
    
    return b;
  }
}
