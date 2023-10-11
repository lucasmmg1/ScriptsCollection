public class Circulo extends Forma
{
  //Métodos Construtores
  Circulo()
  {
    pontos = 1;
  }
  
  
  //Métodos Personalizados
  public void Desenhar()
  {
    fill(cor);
    ellipse(x, y, largura, altura);
  }
  public boolean Detectar()
  {
    boolean b;
    
    if ((mouseX >= x - largura / 2 && mouseX <= x + largura / 2) && (mouseY >= y - altura / 2 && mouseY <= y + altura / 2))
      b = true;
    else
      b = false;
    
    return b;
  }
}
