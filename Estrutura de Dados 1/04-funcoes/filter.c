#include <stdio.h>
#include <stdlib.h>
#include<stdbool.h>



bool ehPar(int n){
    return (n%2 == 0 ? true : false);
}

bool ehImpar(int n){
    return (n%2 != 0 ? true : false);
}


int* filter(int* v, int tam, int* novoTam, bool (*pFuncao)(int)){

    int cont = 0;
    for (int i=0; i < tam; i++){
        if(pFuncao(v[i])) cont++;
    }

    int* novo = (int*)calloc(cont, sizeof(int));
    int j = 0;
    for (int i=0; i < tam; i++){
        if(pFuncao(v[i])){
            novo[j++] = v[i];
        }
    }
    *novoTam = cont;
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

    int vetor[5] = {10,11,12,13,14};
    imprimirVetor(vetor, 5);
    
    int tamCopia = 0;
    int* copia = filter(vetor, 5, &tamCopia, ehImpar);
    
    imprimirVetor(vetor, 5);
    imprimirVetor(copia, tamCopia);

    
    return 0;
}