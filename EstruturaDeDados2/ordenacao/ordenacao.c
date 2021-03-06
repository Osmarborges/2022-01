#include <stdlib.h>
#include <string.h>

int maxx(int *v, n){
    int maior = v[0];
    for ( int i = 1; i < n; i++){
        if(v[i] > maior)
            maior = v[i];
    }
    return maior;
}
void counting_sorting(int* v, int n, int div, int base, int* s){
    int i, t, c[base], acum= 0;
    memset(c, 0, sizeof(int) * base);
    
    #define DIGIT(X) (X/div) % base

    for (i= 0 ; i <n ; i++)
     c[DIGIT(v[i])]++;
    
    for(i = 0 ; i< base; i++){
        t = c[i];
        c[i] = acum;
        acum += t;
    }
    for(i= 0 ; i<n ; i++){
        temp[c[DIGIT(v[i])]] = v[i];
        c[DIGIT(v[i])]++;
    }
    maincpy(v,s,sizeof(int)*n);
}

void RadixSort(int* v,int n){
    int k, div = 1;
    k = max(v, n);
    int * temp = malloc(sizeof(int)*n);
    while(k > 0){
        counting_sorting(v, n, div, 10, temp);
        div*=10;
        k/=10;
    }
    free(temp);
}