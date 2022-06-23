#include "arn.h"
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

static inline bool eh_VERMELHO(ARN* A){
    if(A == NULL) 
        return false;
    //return A->cor==C_VERMELHO?true:false;
    return A->cor == C_VERMELHO;
}
 //inline avisa o compilador que pode substituir o corpo da funçao
static inline void inverteCor(ARN*A){
    A->cor = C_VERMELHO;
    A->esq->cor = C_PRETO;
    A->dir->cor = C_PRETO;
}

static void rotEsq(ARN**A){
    ARN *h, *x;
    h = *A;
    x= h->dir;
    h->dir = x->esq;
    x->esq = h;
    x->cor = h->cor;
    h->cor = C_VERMELHO;
    *A = x;
}

ARN* ARN_criar(ARN* A){
    return NULL;
}
ARN* ARN_novoNo(int chave, int valor){

    ARN* novo = malloc(sizeof(ARN));
    novo->chave = chave;
    novo->dir = NULL;
    novo->esq = NULL;
    novo->cor = C_VERMELHO;
}

void ARN_inserir(ARN**A, int chave, int valor){
    if((*A) == NULL){
        *A = ARN_novoNo(chave, valor);
        return;
    }
    if(chave < (*A)->chave){
        ARN_inserir(&(*A)->esq, chave, valor);
    }
    else if(chave > (*A)->chave){
        ARN_inserir(&(*A)->dir, chave, valor);
    }
    if(!eh_VERMELHO((*A)->esq) && eh_VERMELHO((*A)->dir)){
        rotEsq((A));        
    }
    if(eh_VERMELHO((*A)->esq) && eh_VERMELHO((*A)->esq->esq)){
        rotDir((A));
    }
    if(eh_VERMELHO((*A)->esq) && eh_VERMELHO((*A)->dir)){
        inverteCor();
    }
    

}
void ARN_inserir(ARN**A, int chave, int valor){