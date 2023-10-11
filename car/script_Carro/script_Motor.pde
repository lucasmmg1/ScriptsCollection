class Motor
{
  float diametro;
  color cor;
  
  Motor(float diametro)
  {
    this.diametro = diametro;
    cor = color(255, 0, 0);
  }
  
  void Ligar()
  {
    cor = color(0, 255, 0);
  }
  void Desligar()
  {
    cor = color(255, 0, 0);
  }
  
  void Desenhar(float x, float y)
  {
    fill(cor);
    ellipse(x, y, diametro, diametro);
  }
}
