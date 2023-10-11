// Bibliotecas
#include <stdio.h>
#include <stdlib.h>

int a, codigoDeErro;

// Criação de métodos personalizados
void CriarTriangulo (int n);

// Criação e atribuição do método principal
int main (void)
{
    codigoDeErro = a = 0;
    printf("Digite o numero de asteriscos:\n");

    if (scanf("%d", &a) == 0)
    {
        printf ("\nErro 14: o parametro digitado nao e um numero");
        codigoDeErro = 14;
    }
    else
    {
        CriarTriangulo(a);
        codigoDeErro = 0;
    }

    exit(codigoDeErro);
}

// Atribuição de métodos personalizados
void CriarTriangulo (int n)
{
    int d = n % 2 == 0 ? 2 : 1;
    printf("\n");

    for (int x = 0; x < n; x++)
    {
        for (int i = 0; i < n - x; i++)
            printf(" ");

        for (int i = 0; i < d; i++)
            printf("*");
        
        d += 2;
        printf("\n");
    }
}