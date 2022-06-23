#include <stdio.h>
#include "abb.h"

int main(){
    ABB * r = NULL;
    ABB_inserir(&r, 5);
    ABB_inserir(&r, 4);
    ABB_inserir(&r, 20);
    ABB_inserir(&r, 2);
    ABB_inserir(&r, 6);
    ABB_inserir(&r, 1);
    ABB_inserir(&r, 3);

    // printf("%p\n",ABB_buscar(r, 1));
    // printf("%p\n",ABB_buscar(r, 7));
    // printf("%p\n",ABB_buscar(r, 2));
    // printf("%p\n",ABB_buscar(r, 20));
    
    ABB_imprimirEmOrdem(r);


    return 0;
}