#include <stdio.h>
#include "listacompra.h"


int main(){
    char listona[] = "banana manana miojo tang miojo ovo laranja";
    ListaCompras *lc = lc_criar(listona);
    lc_imprimir(lc);
    char * s = lc_semRepeticoes(lc);
    printf("%s\n",s);
    lc_destrui(lc);
    return 0;
}
