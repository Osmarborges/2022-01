#include <stdio.h>

int main() {
    int a;
    int b;
    int c;
    int d;

    printf("Entre com 4 numeros: \n");
    scanf("%d %d %d %d", &a, &b, &c, &d);
    
    printf("Numeros: %d %d %d %d\n", a,b,c,d);

    float res = (float)(a + b + c + d) / 4;
    printf("Media:   %.2f\n", res);

    return 0; 

}
