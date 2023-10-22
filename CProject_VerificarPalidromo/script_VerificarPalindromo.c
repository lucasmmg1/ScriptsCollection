// Bibliotecas
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <ctype.h>

// Criação de variáveis
char tW[] = "arroz";

// Criação de métodos personalizados
bool Verificar (char w[]);

// Criação e atribuição do método principal
int main (void)
{
    for (int x = 0; tW[x] != '\0'; x++)
        tW[x] = tolower(tW[x]);

    if (Verificar(tW))
        printf ("A palavra %s é palíndroma.", tW);
    else
        printf ("A palavra %s não é palíndroma.", tW);

    exit (0);
}

// Atribuição de métodos personalizados
bool Verificar (char w[])
{
    int wIndex = 0;
    int dL = 0;
    bool r;

    while (w[wIndex] != '\0')
        wIndex++;

    char invW[wIndex];
    for (int x = 0; x < wIndex; x++)
        invW[wIndex - x - 1] = w[x];

    for (int x = 0; x < wIndex; x++)
    {
        if (invW[x] != w[x])
            dL++;
    }
    
    if (dL > 0)
        r = false;
    else
        r = true;

    return r;
}