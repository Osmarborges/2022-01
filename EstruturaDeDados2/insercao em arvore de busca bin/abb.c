#include "abb.h"
#include <stdlib.h>
#include <stdio.h>

ABB* ABB_criar(int chave, ABB* esq, ABB* dir){
    ABB* novo = malloc(sizeof(ABB));
    novo->chave = chave;
    novo->esq = esq;
    novo->dir = dir;

    return novo;
}

void ABB_inserir(ABB** A, int chave){
    if((*A) == NULL){
        *A = ABB_criar(chave, NULL, NULL);
        return;
    }

    if(chave <= (*A)->chave){
        ABB_inserir(&(*A)->esq, chave);
    }
    else{
        ABB_inserir(&(*A)->dir, chave);
    }
}

ABB* ABB_buscar(ABB* A, int chave){
    if(A == NULL){
        return NULL;
    }
    if(A->chave == chave){
        return A;
    }
    if(chave < A->chave){
        return ABB_buscar(A->esq, chave);
    }
    return ABB_buscar(A->dir, chave);

    return ;
}

void ABB_imprimirEmOrdem(ABB *A){
    if(A == NULL)
    return;

    ABB_imprimirEmOrdem(A->esq);
    printf("%d,",A->chave);
    ABB_imprimirEmOrdem(A->dir);
    printf("%d,",A->chave);
}