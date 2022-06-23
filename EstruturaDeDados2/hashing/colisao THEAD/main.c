
#include <stdlib.h>
#include <stdio.h>
#include "thea.h"

void main(void){
    
    int n, m, i, chave;    



    THEA* t;
   // ILIST *chaves = NULL;
    t = THEA_Criar(10);

    THEA_Inserir(t, 10, 10);
    THEA_Inserir(t, 21, 21);
    THEA_Inserir(t, 44, 44);
    THEA_Inserir(t, 32, 32);
    THEA_Inserir(t, 12, 12);
    THEA_Inserir(t, 37, 37);
    THEA_Inserir(t, 43, 43);
 

     THEA_Imprimir(t);

    // chaves = THEA_Chaves(ht);
    // ILIST_Imprimir(chaves, 0);
    // ILIST_Destruir(chaves);

    // teste 2

    // for(i = 0; i < n; i++){
    //     chave = (rand() % (n*10));
    //     THEA_Inserir(ht, chave, chave + (rand() % 10));
    // }

    // THEA_Imprimir(ht);

    // chaves = THEA_Chaves(ht);
    // ILIST_Imprimir(chaves, 0);
    // ILIST_Destruir(chaves);

    // THEA_Destruir(ht);

    //return EXIT_SUCCESS;
}

