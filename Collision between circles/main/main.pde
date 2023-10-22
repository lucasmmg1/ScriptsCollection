float x1, x2, y1, y2, raio1, raio2, distancia, dX, dY;
size(800, 600);

x1 = random(width);
x2 = random(width);
y1 = random(height);
y2 = random(height);
raio1 = random(25, 150);
raio2 = random(25, 150);

dX = x1 - x2;
dY = y1 - y2;

distancia = sqrt(dX * dX + dY * dY);

if(distancia < raio1 + raio2)
  fill(255, 0, 0);
else
  fill(0, 0, 255);

ellipse(x1, y1, raio1 * 2, raio1 * 2);
ellipse(x2, y2, raio2 * 2, raio2 * 2);
