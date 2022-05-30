#include <stdlib.h>
#include <stdio.h>

typedef struct no{
	int dado;         // 4
	struct no* prox;  // 8
	struct no* ant;  // 8
}No;


No* criaNo(int dado){
    No* novo = (No*) malloc(sizeof(No));
    novo->dado = dado;
    novo->prox = NULL; 
    return novo;
}

int main(){

    // ORGANIZAÇÃO CONTÍGUA
    int* c = (int*) calloc(3, sizeof(int));
    c[0] = 1;
    c[1] = 2;
    c[2] = 3;

    No* e;
    No* novo;

    novo = criaNo(1);
    e = novo;

    novo = criaNo(2);
    e->prox = novo;

    novo = criaNo(3);
    e->prox->prox = novo;

   
    

    No* aux = e;
    while(aux != NULL){
        printf("(%u) %d\n", aux, aux->dado);
        aux = aux->prox; 
    }


    // printf("%d\n", e             ->dado); // 1
    // printf("%d\n", e->prox       ->dado); // 2
    // printf("%d\n", e->prox->prox ->dado); // 3

    // printf("%d\n", (*e).dado); // 1
    // printf("%d\n", (*(*e).prox).dado); // 2
    // printf("%d\n", (*(*(*e).prox).prox).dado); // 2



}