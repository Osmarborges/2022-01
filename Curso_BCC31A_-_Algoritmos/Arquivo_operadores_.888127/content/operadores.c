#include <stdio.h>

int main() {
    int a = 0;
    int b = 0;

    printf("Entre com dois numeros: \n");
    scanf("%d %d", &a, &b);

    printf("Soma:      %d + %d = %d\n", a, b, a+b);
    printf("Subtracao: %d - %d = %d\n", a, b, a-b);
    printf("Produto:   %d x %d = %d\n", a, b, a*b);
    printf("Divisao:   %d / %d = %d\n", a, b, a/b);

    return 0; 

}


