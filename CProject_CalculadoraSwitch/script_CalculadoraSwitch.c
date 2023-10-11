// Bibliotecas
#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

// Criação de métodos personalizados
float Calculadora (char s[], float n1, float n2);

// Criação e atribuição do método principal
int main (void)
{
    printf("%.1f", Calculadora("cachorro", 1, 1));
    exit (0);
}

// Atribuição de métodos personalizados
float Calculadora (char s[], float n1, float n2)
{
    int i = 0;
    float resul = 0;
    char c = tolower(s[0]);

    switch (c)
    {
        case 'a':
            resul = n1 + n2;
            s = "adição";
            break;
        
        case 's':
            resul = n1 - n2;
            s = "subtração";
            break;
        
        case 'm':
            resul = n1 * n2;
            s = "multiplicação";
            break;
        
        case 'd':
            resul = n1 / n2;
            s = "divisão";
            break;
        
        default:
            printf ("Erro 1 : tipo de operação inválido");
            exit (1);
            break;
    }

    printf ("O resultado da %s entre %.1f e %.1f é ", s, n1, n2);
    return resul;
}