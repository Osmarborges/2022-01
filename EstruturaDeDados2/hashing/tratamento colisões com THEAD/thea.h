#pragma once
#include<stdlib.h>

typedef enum ESTADO{
    E_LIVRE,
    E_OCUPADO,
    E_APAGADO
} ESTADO;

typedef struct{
    int chave;
    int valor;
    ESTADO estado;
} ELEM;

typedef struct{
    size_t m;
    ELEM* t;
} THEA;


THEA* THEA_Criar(int m);
int THEA_HASH(THEA* th, int chave, int k);
int THEA_Inserir(THEA* th, int chave, int valor);
void THEA_Remover(THEA* th, int chave);
void THEA_Imprimir(THEA* th);