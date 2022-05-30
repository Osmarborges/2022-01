//tad_vetor.c
#include "tad_vetor.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/********************************************
 * Especificação dos dados
 *******************************************/
struct vetor{
    int *vet;
    int tam;
    int qtd;
};

/********************************************
 * Funções auxiliares
 *******************************************/
void verifica_aumenta(Vetor* v){
    if(v->qtd < v->tam) return;

    int novoTamanho = v->tam * 2;
    int* novo = (int*) calloc(novoTamanho, sizeof(int));

    for (int i=0; i < v->qtd; i++){
        novo[i] = v->vet[i];
    }

    free(v->vet);
    v->vet = novo;
    v->tam = novoTamanho;
}


/********************************************
 * Implementação das funções
 *******************************************/
Vetor* vet_criar(){
    Vetor* novo = (Vetor*) malloc(sizeof(Vetor));
    novo->vet = (int*) calloc(1, sizeof(int));
    novo->tam = 1;
    novo->qtd = 0;
    return novo;
}

bool vet_anexar(Vetor* v, int elemento){
    
    verifica_aumenta(v);
    v->vet[v->qtd++] = elemento;
    return true;
}

bool vet_inserir(Vetor* v, int elemento, int posicao){
    if(posicao > v->qtd) return false;
    if(posicao < 0)      return false;    
    verifica_aumenta(v);

    // deslocamento a direita
    for (int i=v->qtd; i > posicao; i--){
        v->vet[i] = v->vet[i-1];
    }
    // inserção na posição
    v->vet[posicao] = elemento;
    v->qtd++;
    return true;
}

bool vet_substituir(Vetor* v, int posicao, int novoElemento);
bool vet_removerPosicao(Vetor* v, int posicao, int* endereco);
int vet_removerElemento(Vetor* v, int elemento);
int vet_tamanho(Vetor* v);
bool vet_elemento(Vetor* v, int posicao, int* saida);
int vet_posicao(Vetor* v, int elemento);
void vet_imprimir(Vetor* v){
    printf("[");
    for (int i=0; i < v->qtd; i++){
        printf("%d", v->vet[i]);
        if(i < v->qtd-1) printf(",");
    }
    printf("]");
    printf("\n");
}
void vet_desalocar(Vetor** endVetor);

bool vet_toString(Vetor* v, char* saida){

    *saida = '\0';
    
    strcat(saida, "[");    
    for (int i=0; i < v->qtd; i++){
        char elemento[20];
        sprintf(elemento, "%d", v->vet[i]);
        strcat(saida, elemento);
        if(i < v->qtd-1) strcat(saida, ",");
    }
    strcat(saida, "]");
    return true;
}