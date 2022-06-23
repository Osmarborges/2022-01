#include "abb.h"
#include <stdio.h>
#include <stdlib.h>

int* gerar_vetor_aleatorio(int n, int seed, int max){
    int i;
    int* v = malloc(sizeof(int) * n);
    srand(seed);
    for( i = 0; i < n; i++){
        v[i] = rand() % max;
    }
    return v;
}

int main(int argc, char** argv){
    int n = atoi(argv[1]);
    int *v = gerar_vetor_aleatorio(n,10,10 *n);    
    int i;
    // int v []= {10,8,12,5,2};
    // int n = 5;
    ABB *r = NULL;
     for( i = 0; i < n; i++){
       ABB_Inserir(&r, v[i]);
    }
   // ABB_ImprimirEmOrdem(r);
   for( i = 0; i < n; i++){
       printf("%d, ",v[i]);
    }
    printf("\n esta arvore tem %d nos \n", ABB_n(r));
    printf("\n esta arvore tem altura %d \n", ABB_Altura(r));
}
