#include <stdio.h>
#include <stdlib.h>
#include "busca.h"

int* vetorOrdenado(int n)
{
    int *v =(int*) malloc(sizeof(int) * n);
    int i;
    for (i = 0; i < n; i++)
        v[i] = i * 10;

    return v;
}
int main(int argc, char **argv)
{
    int n = atoi(argv[1]);
    int x = atoi(argv[2]);
    int* v = vetorOrdenado(n);
    int idx = BuscaBinaria(v, n, x);
    printf("%d esta na posicao = %d", x, idx);
    return 0;
}
