#include <stdio.h>
#include <stdlib.h>

int main()
{
    int a;
    printf("Entre com um numero de 0-100:\n>_ ");
    scanf("%d", &a);

    if (a < 0 || a > 100) {
        printf("Erro: nao eh possivel escrever o numero informado.");
    } else {
        if (a == 0) printf("zero");
        else
        if (a == 11) printf("onze");
        else
        if (a == 12) printf("doze");
        else
        if (a == 13) printf("treze");
        else
        if (a == 14) printf("quatorze");
        else
        if (a == 15) printf("quinze");
        else
        if (a == 16) printf("dezesseis");
        else
        if (a == 17) printf("dezessete");
        else
        if (a == 18) printf("dezoito");
        else
        if (a == 19) printf("dezenove");
        else
        if (a == 100) printf("cem");
        else {
            // desmontando o numero
            int u = a % 10;// obtemos a unidade: resto da divisao por 10
            int d = a - u; // obtemos a dezena: diferenca entre o numero e a unidade

            printf("d:%d u:%d\n", d, u);

            // identificar e imprimir as dezenas (20,30,...90)

            // verificar se eh necessario 'e'?

            // identificar e imprimir unidades (1-9)
        }
        printf("\n");
    }

    return 0;
}
