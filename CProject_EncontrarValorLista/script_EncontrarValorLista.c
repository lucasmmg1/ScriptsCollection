// Bibliotecas
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

// Criação de variáveis
int NUM_VALORES = 15;
int lista[15];

// Criação de métodos personalizados
void EncontrarValorLista (int n1);

// Criação e atribuição do método principal
int main (void)
{
    srand(time(0));

    for (int x = 0; x < NUM_VALORES;)
    {
        int tmp = rand() % 146;
        
        for (int i = 0; i < NUM_VALORES; i++)
            if (lista[i] == tmp)
                continue;

        lista[x] = tmp;
        x++;
    }
    
    EncontrarValorLista (12);
}

// Criação e atribuição de métodos personalizados
void EncontrarValorLista (int n1)
{
    for (int x = 0; x < NUM_VALORES; x++)
        if (lista[x] == n1)
        {
            printf ("O valor fornecido fora encontrado na posição %i.", x + 1);
            exit (0);
        }

    printf ("O valor fornecido não fora encontrado.");
    exit (0);
}

