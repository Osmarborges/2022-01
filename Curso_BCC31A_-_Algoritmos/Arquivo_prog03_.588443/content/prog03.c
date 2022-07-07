#include <stdio.h>
#include <stdlib.h>

/* Programa que escreve por extenso um numero ate 10 */
int main()
{
    // 1) ler o numero pelo teclado
    printf("Entre com o numero (0-10):\n");
    printf("> ");
    int num = 0;
    scanf(" %d", &num);

    // 2) verificar se o numero esta no intervalo valido: 0 - 10
    if (num >= 0 && num <= 100) {
        // separando unidade e dezena do numero
        int dez = num/10;
        int uni = num%10;

        if (dez >= 2) {
            switch(dez) {
                case 2: printf("vinte");   break;
                case 3: printf("trinta"); break;
                case 4: printf("quarenta"); break;
                case 5: printf("cinquenta");  break;
                case 6: printf("sessenta"); break;
                case 7: printf("setenta"); break;
                case 8: printf("oitenta"); break;
                case 9: printf("noventa"); break;
            }
        }
        printf(" ");

        if (dez > 0 && uni == 0)
            return 0;

        // pode ser que precise do " e "
        if (dez >= 2) {
            if (uni != 0 ) {
                printf("e ");
            }
        }
        // seletor de UNIDADE
        switch(uni) {
            case 0: printf("zero"); break;
            case 1: printf("um");   break;
            case 2: printf("dois"); break;
            case 3: printf("tres"); break;
            case 4: printf("quatro"); break;
            case 5: printf("cinco");  break;
            case 6: printf("seis"); break;
            case 7: printf("sete"); break;
            case 8: printf("oito"); break;
            case 9: printf("nove"); break;
            case 10:printf("dez");  break;
        }
    } else {
        printf("ERRO: Numero invalido");
    }

    // 3) se intervalo ok, escreve o numero

    return 0;
}
