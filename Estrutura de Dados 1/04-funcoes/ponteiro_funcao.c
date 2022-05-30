#include <stdio.h>

int soma(int a, int b){
    return a + b;
}

int subtrai(int a, int b){
    return a - b;
}

int multiplica(int a, int b){
    return a * b;
}

int operacao(int a, int b, int (*pFuncao)(int, int) ){
    int resultado = pFuncao(a, b);
    return resultado;
}

int main(){

    int x  = 10;    
    int y  = 20;    
    int r = 0;

    r = operacao(x, y, soma);
    printf("%d\n", r);

    r = operacao(x, y, subtrai);
    printf("%d\n", r);
    
    r = operacao(x, y, multiplica);
    printf("%d\n", r);

    return 0;
}