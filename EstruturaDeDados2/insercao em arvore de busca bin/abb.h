#pragma once

typedef struct ABB{
    int chave;
    struct ABB *esq;
    struct ABB *dir;
}ABB;
    
ABB* ABB_criar(int chave, ABB* esq, ABB* dir);
void ABB_inserir(ABB** A, int chave);
ABB* ABB_buscar(ABB* A, int chave);
void ABB_imprimirEmOrdem(ABB* A);