#pragma once
#include "listacompra.c"

typedef struct listacompra
{
    char **itens;
    int n;
} ListaCompras;

ListaCompras lc_criar(char *itens);
void lc_Ordenar(ListaCompras *lc);
char* lc_semRepeticoes(ListaCompras *lc);
void lc_imprimir(ListaCompras *lc);
void lc_destruir(ListaCompras *lc);

#define MAX_ITENS 1000
#define MAX_TAM 21
#define BUF_LEN ((MAX_ITENS * MAX_TAM)+1)