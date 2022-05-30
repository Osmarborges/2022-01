#include <stdio.h>
#include <stdlib.h>


int incrementa(int n){
    return n+1 ;
}
int decrementa(int n){
    return n-1 ;
}


void map(int* v, int tam, int (*pFuncao)(int)){
    for (int i=0; i < tam; i++){
        v[i] = pFuncao(v[i]);
    }
}

int* map2(int* v, int tam, int (*pFuncao)(int)){
    int* novo = (int*)calloc(tam, sizeof(int));

    for (int i=0; i < tam; i++){
        novo[i] = pFuncao(v[i]);
    }
    return novo;
}

void imprimirVetor(int* v, int tam){
    printf("[");
    for (int i=0; i < tam; i++){
        printf("%d", v[i]);
        if(i < tam-1) printf(",");
    }
    printf("]\n");
}


int main(){

    int vetor[5] = {10,20,30,40,50};
    imprimirVetor(vetor, 5);
    map(vetor, 5, &incrementa);
    // map(vetor, 5, decrementa);
    imprimirVetor(vetor, 5);

    int v[5] = {60,70,80,90,100};
    int* copia = map2(v, 5, incrementa);
    
    imprimirVetor(v, 5);
    imprimirVetor(copia, 5);

    
    return 0;
}