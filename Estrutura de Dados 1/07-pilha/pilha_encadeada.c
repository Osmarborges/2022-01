#include "pilha.h"
#include<stdlib.h>
#include<stdio.h>
#include<string.h>

/**************************************
* Especificação do dados
**************************************/
typedef struct no{
    TipoElemento dado;
    struct no* prox;
}No;

struct pilha{
    int qtde;
    No* topo;
};


/***********************************************
* Funções auxiliares
************************************************/

No* criaNo(TipoElemento elemento){
    No* novo = (No*) malloc(sizeof(No));
    novo->dado = elemento;
    novo->prox = NULL;
    return novo;
}

bool pilha_ehValida(Pilha* p){
    return (p != NULL ? true : false);
}

/**************************************
* Implementação das funções
**************************************/
Pilha* pilha_criar(){
    Pilha* p = (Pilha*) malloc(sizeof(Pilha));
    p->qtde = 0;
    p->topo = NULL;
    return p;
}
void pilha_destruir(Pilha** endereco){    
    if(!pilha_ehValida(*endereco)) return;

    Pilha* p = *endereco;
    No* aux;

    while(p->topo != NULL){
        aux = p->topo;
        p->topo = p->topo->prox;
        free(aux);
    }

    free(p);
    *endereco = NULL;
}


bool pilha_empilhar(Pilha* p, TipoElemento elemento){
    if(!pilha_ehValida(p)) return false;

    // Criando o nó
    No* novo = criaNo(elemento);
    // encadeando o nó na Pilha. Inserção no topo 
    novo->prox = p->topo;
    // atualizando o topo
    p->topo = novo;
    p->qtde++;
    return true;
}

bool pilha_desempilhar(Pilha* p, TipoElemento* saida){
    if(!pilha_ehValida(p)) return false;
    if(pilha_vazia(p)) return false;


    *saida = p->topo->dado;    
    No* aux = p->topo;
    p->topo = p->topo->prox;    
    free(aux);
    p->qtde--;

    return true;

}

bool pilha_topo(Pilha* p, TipoElemento* saida){
    if(!pilha_ehValida(p)) return false;
    if(pilha_vazia(p)) return false;

    *saida = p->topo->dado;    
    return true;
} 

bool pilha_vazia(Pilha* p){
    if(!pilha_ehValida(p)) return false;

    return (p->qtde == 0 ? true : false);
}

void pilha_toString(Pilha* p, char* saida){
    if(!pilha_ehValida(p)) return;

    saida[0] = '\0';
    strcat(saida, "[");
    No* aux = p->topo;
    while(aux != NULL){
        char elemento[20];
        sprintf(elemento, "%d", aux->dado);
        strcat(saida, elemento);
        if(aux->prox!=NULL) strcat(saida, ",");
        
        aux = aux->prox;
    }
    strcat(saida, "]");   
}

// void pilha_imprimir(Pilha* p){
//     No* aux = p->topo;
    
//     while(aux != NULL){
//         printf("%d\n", aux->dado);        
//         aux = aux->prox;
//     }
// }


void imprime_recursivo(No* no){
    if(no != NULL){
        imprime_recursivo(no->prox);
        printf("%d\n", no->dado);
    }
}

void pilha_imprimir(Pilha* p){

    imprime_recursivo(p->topo);
    
}