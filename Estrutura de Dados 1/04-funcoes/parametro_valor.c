#include <stdio.h>

int soma(int a, int b){
    int s = a + b;
    
    return s;
}


int main(){
    // Entrada
    int n1 = 8;
    int n2 = 5;

    // Processamento
    int total = soma(n1, n2);

    // Saída
    printf("%d\n", total);
    return 0;
}

