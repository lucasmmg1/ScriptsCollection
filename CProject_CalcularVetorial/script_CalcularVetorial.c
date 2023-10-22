// Bibliotecas
#include <stdio.h>
#include <stdlib.h>

// Criação de métodos personalizados
int CalcularVetorial (int n);

// Criação e atribuição do método principal
int main (void)
{
    printf("%i", CalcularVetorial(6));
    exit (0);
}

// Criação e atribuição de métodos personalizados
int CalcularVetorial (int n)
{
    int resul = n;

    for (int x = 1; x < n; x ++)
        resul *= n - x;

    return resul;
}