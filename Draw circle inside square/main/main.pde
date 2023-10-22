int[] tamanhos = {400, 450, 500, 550};
int quadradoW, quadradoH;

color c = color(random(0, 255), random(0, 255), random(0, 255));

void setup()
{
  size(600, 600);
  
  quadradoW = quadradoH = tamanhos[int(random(tamanhos.length))];
  println(quadradoW);
}

void draw()
{
  background(127);
  
  fill(255);
  rect(width / 2 - quadradoW / 2, height / 2 - quadradoH / 2, quadradoW, quadradoH);
  
  fill(c);
  ellipse(width / 2, height / 2, quadradoW, quadradoH);
}

void keyPressed()
{
  if (key == 'R' || key == 'r')
  {
    c = color(random(0, 255), random(0, 255), random(0, 255));
    quadradoW = quadradoH = tamanhos[int(random(tamanhos.length))];
  }
}
