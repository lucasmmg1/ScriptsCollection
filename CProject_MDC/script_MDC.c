// Bibliotecas
#include <stdio.h>
#include <stdlib.h>

// Criação de métodos personalizados
int CalcularMDC (int n1, int n2);

// Criação e atribuição do método principal
int main (void)
{
    printf ("%i.", CalcularMDC (48, 32));
    exit (0);
}

// Criação e atribuição de métodos personalizados
int CalcularMDC (int n1, int n2)
{
    int nP = 2;
    int resul = 1;

    printf("O MDC entre %i e %i é ", n1, n2);

    while (n1 != 1 && n2 != 1)
    {
        for (int x = 1; x <= nP; x++)
        {
            if ((x != 1 && x != nP) && nP % x == 0)
            {
                nP++;
                break;
            }
        } 

        if (n1 % nP == 0 || n2 % nP == 0)
        {
            if (n1 % nP == 0 && n2 % nP == 0)
            {
                n1 /= nP;
                n2 /= nP;
                resul *= nP;
            }
            else if (n1 % nP == 0)
                n1 /= nP;
            else
                n2 /= nP;

        }
        else
            nP++;
    }

    return resul;
}