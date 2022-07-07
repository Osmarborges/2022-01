#include <stdio.h>

int main() {
    int a = 0;
    int b = 0;

    printf("Entre com dois numeros: \n");
    scanf("%d %d", &a, &b);

    printf("Divisao inteira: %d / %d = %d\n", a, b, a/b);
    printf("Resto inteiro:   %d %% %d = %d\n", a, b, a%b);
    printf("Divisao real:    %d / %d = %f\n", a, b, a/(float)b);

    return 0; 

}

