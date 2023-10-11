class Carro
{
  float x, y, largura, altura, velocidade;
  color cor;
  Motor motor = new Motor(10);
  
  Carro(float x, float y, float largura, float altura)
  {
    this.x = x;
    this.y = y;
    this.largura = largura;
    this.altura = altura;
    
    velocidade = 6;
    
    cor = color(random(0, 255), random(0, 255), random(0, 255));
  }
  
  void Acelerar(int d)
  {
    motor.Ligar();
    
    switch (d)
    {
      case 1:
        x += velocidade;
        break;
        
      case -1:
        x -= velocidade;
        break;
    }
  }
  
  void Brecar()
  {
    motor.Desligar();
  }
  
  void Desenhar()
  {
    fill(cor);
    
    rect(x, y, largura, altura);
    motor.Desenhar(x + largura, y + altura / 2);
  }
  
}
