// Bibliotecas
#include <stdio.h>
#include <stdlib.h>

// Criação de variáveis 
int num = 9;
int divsr = 5;

// Criação de métodos personalizados
void CalcularRestoSemModulo (int n, int d);

// Criação e atribuição do método principal
int main (void)
{
    CalcularRestoSemModulo (num, divsr);
    exit (0);
}

// Atribuição de métodos personalizados
void CalcularRestoSemModulo (int n, int d)
{
    printf ("O resto da divisão de %i por %i é %i.", n, d, n - (n / d) * d); 
}