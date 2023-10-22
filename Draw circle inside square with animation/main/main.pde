int[] tamanhos = {400, 450, 500, 550};
color[] cores;

int quadradoW, quadradoH, circuloD, contador;
float timer;

void setup()
{
  size(600, 600);
  
  circuloD = quadradoW = quadradoH = tamanhos[int(random(tamanhos.length))];
  contador = circuloD / 15;
  timer = millis();

  cores = new color[contador];

  for (int i = 0; i < contador; i++)
    cores[i] = color(random(0, 255), random(0, 255), random(0, 255));
}

void draw()
{
  fill(255);
  rect(width / 2 - quadradoW / 2, height / 2 - quadradoH / 2, quadradoW, quadradoH);
  
   if (millis() >= timer + 2000 / 60 && contador > 0)
   {
     timer = millis();
     contador -= 1;
   }
   
  fill(255, 0, 0); 
  ellipse(width / 2, height / 2, circuloD - 15 * contador, circuloD - 15 * contador);
}
