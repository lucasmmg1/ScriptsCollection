float x1, x2, y1, y2, largura1, largura2, altura1, altura2;

void setup()
{
  size(800, 600);
  
  x1 = random(width);
  x2 = random(width);
  y1 = random(height);
  y2 = random(height);

  largura1 = random(6, 255);
  largura2 = random(6, 255);
  altura1 = random(6, 255);
  altura2 = random(6, 255);
}

void draw()
{
  background(255);
  DetectarColisao();
  DesenharQuadrado();
}

void keyPressed()
{
  if(key == 'r' || key == 'R')
  {
    x1 = random(width);
    x2 = random(width);
    y1 = random(height);
    y2 = random(height);

    largura1 = random(6, 255);
    largura2 = random(6, 255);
    altura1 = random(6, 255);
    altura2 = random(6, 255);
  }
}

void DesenharQuadrado()
{
  rect(x1, y1, largura1, altura1);
  rect(x2, y2, largura2, altura2);
}

void DetectarColisao()
{
  if ((x2 <= x1 + largura1 && x2 >= x1 || x1 <= x2 + largura2 && x1 >= x2) && (y2 <= y1 + altura1 && y2 >= y1 || y1 <= y2 + altura2 && y1 >= y2))
    fill(255, 0, 0);
  else
    fill(0, 0, 255);
}
