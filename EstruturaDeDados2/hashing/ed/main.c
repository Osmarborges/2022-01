#include <stdio.h>
#include <stdlib.h>
#include <stdio.h>

#include "ilist.h"
#include "hashtable_ed.h"

int main(int argc, char** argv){
    
    int n, m, i, chave;    

    int seed = 0;
    // ler comandos no terminal
    n = argc > 1 ? atoi(argv[1]) : 10;
    m = argc > 2 ? atoi(argv[2]) : n >> 1;// divide por dois com shift

    srand(seed);

    THED* ht;
    ILIST *chaves = NULL;
    ht = THED_Criar(m, 10);

    // teste 1
    THED_Inserir(ht , 3, 5);
    THED_Inserir(ht , 14, 10);
    THED_Inserir(ht , 29, 0);
    THED_Inserir(ht , 32, 2);

    THED_Imprimir(ht);
    // THED_Inserir(ht, 10, 5);
    // THED_Imprimir(ht);
    // THED_Inserir(ht, 11, 7);
    // THED_Imprimir(ht);
    // THED_Inserir(ht, 13, 0);
    // THED_Imprimir(ht);

    ILIST *chav = THED_Chaves(ht);
    // ILIST_Imprimir(chaves, 0);
    // ILIST_Destruir(chaves);

    // teste 2

    // for(i = 0; i < n; i++){
    //     chave = (rand() % (n*10));
    //     THED_Inserir(ht, chave, chave + (rand() % 10));
    // }

     THED_Imprimir(ht);

    chav = THED_Chaves(ht);
    ILIST_Imprimir(chav, 0);
    ILIST_Destruir(chav);

    THED_Destruir(ht);

    return EXIT_SUCCESS;
}
