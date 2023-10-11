Carro carro;
Motor motor;

void setup()
{
  size(800, 600);
  carro = new Carro(100, 300, 100, 50);
  motor = new Motor(100);
}

void draw()
{
  background(200);
  
  if (mousePressed)
  {
    if (mouseButton == LEFT)
      carro.Acelerar(1);
    else if (mouseButton == RIGHT)
      carro.Acelerar(-1);
  }
  else
    carro.Brecar();
  
  carro.Desenhar();
}
