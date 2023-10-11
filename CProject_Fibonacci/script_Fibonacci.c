// Bibliotecas
#include <stdio.h>
#include <stdlib.h>

// Criação de métodos personalizados
int EncontrarTermo (int n);

// Criação e atribuição do método principal
int main (void)
{
    printf("O termo digitado equivale ao número %i", EncontrarTermo(7));
    exit (0);
}

// Atribuição de métodos personalizados
int EncontrarTermo (int n)
{
    int resul = 0;
    int termoAnterior = 0;
    int termoAtual = 1;

    for (int x = 0; x < n - 1; x++)
    {
        resul = termoAnterior + termoAtual;
        termoAnterior = termoAtual;
        termoAtual = resul;
    }

    return resul;
}