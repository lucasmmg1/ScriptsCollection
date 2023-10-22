// Bibliotecas
#include <stdio.h>
#include <stdlib.h>

// Criação de métodos personalizados
void CriarTriangulo (int n);

// Criação e atribuição do método principal
int main (void)
{
    CriarTriangulo (15);
    exit (0);
}

// Criação e atribuição de métodos personalizados
void CriarTriangulo (int n)
{
    int tmp = 1;
    printf("\n");

    for (int x = 0; x < n; x++)
    {
        for (int i = 1; i <= tmp; i++)
            if ((i == 1 || i == tmp) || x == n - 1)
                printf("*");
            else
                printf(" ");

        printf("\n");
        tmp++;
    }
}