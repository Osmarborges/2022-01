#include <stdlib.h>
#include <stdio.h>

#include "thea.h"


THEA* THEA_Criar(int m){
    int i;
    THEA* nova;
    nova = malloc(sizeof(THEA));
    nova->m = 0;
    nova->m = m;
    nova->t = malloc(sizeof(ELEM) * m);
    for( i = 0; i < m; i++)   
        nova->t[i].estado = E_LIVRE;
    return nova;
}
int THEA_HASH(THEA* th, int chave, int k){
    return((chave % th->m) + k) % th->m;
}

int THEA_Inserir(THEA* th, int chave, int valor){
    int k, h, h_inicial;
    k=0;
    h = THEA_HASH(th, chave, k);
    h_inicial = h;
    while(th->t[h].estado == E_OCUPADO){
        if(th->t[h].chave == chave)
        break;
        k++;
        h = THEA_HASH(th, chave, k);
        if(h == h_inicial)
        return -1;        
    }
    th->t[h].chave = chave;
    th->t[h].estado = E_OCUPADO;
    th->t[h].valor = valor;
    return h;
}

// void THEA_Remover(THEA* th, int chave){
//     int h = THEA_Hash(th, chave);
//     int tam_lista = ILIST_Tamanho(th->t[h]);
//     ILIST_Remover(th->t[h], chave);
//     if(tam_lista != ILIST_Tamanho(th->t[h]))
//         th->n--;
// }

// INOH* THEA_Buscar(THEA* th, int chave){
//     int h = THEA_Hash(th, chave);
//     int p = ILIST_Buscar(th->t[h], chave);
//     return ILIST_Endereco(th->t[h], p);
// }

void THEA_Imprimir(THEA* th){
    int i;
    printf("TABELA HASH M = %ld\n", th->m);
    for( i = 0; i < th->m; i++){
        printf("%2d: %d -> %ld (%d)\n", i, th->t[i].chave, th->t[i].valor, th->t[i].estado);
     
    }
    printf("\n");
}

// size_t THEA_N(THEA* th){
//     return th->n;
// }

// ILIST* THEA_Chaves(THEA* th){
//     ILIST* s = ILIST_Criar(THEA_N(th) + 1);
//     INOH* p;
//     for(int i = 0; i < th->m; i++){
//         ILIST_Rebobinar(th->t[i]);
//         p = ILIST_Prox(th->t[i]);
//         while(p != NULL)
//         {
//             ILIST_Inserir(s, p->chave, p->valor);
//             p = ILIST_Prox(th->t[i]);
//         }
//     }
//     return s;
// }

// void THEA_Destruir(THEA* th){
//     for(int i = 0; i < th->m; i++)
//         ILIST_Destruir(th->t[i]);
//     free(th->t);
//     free(th);
// }
