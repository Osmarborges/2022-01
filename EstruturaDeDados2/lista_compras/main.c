#include <stdio.h>
#include <stdlib.h>
#include "lista_compras.h"

int main(int argc, char** argv){
    char listona[] = 
    "banana banana melancia banana mamao ovo omo ovo";

    ListaCompras* lc = LC_Criar(listona);
    LC_Imprimir(lc);
    char* s = LC_SemRepeticoes(lc);
    printf("%s\n", s);
    LC_Destruir(lc);
    free(s);

    return EXIT_SUCCESS;
}
