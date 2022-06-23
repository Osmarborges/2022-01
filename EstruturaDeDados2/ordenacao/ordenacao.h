#include <stdlib.h>
#include <string.h>
int max(int *v, int ini, int fim)
{
    int pm = ini;
    int j;
    for ( j = ini + 1; j <= fim; j++)
    {
        if (v[j] > v[pm])
        {
            pm = j;
        }
    }
    return pm;
}



void troca(int *v, int i, int j)
{
    int aux = v[i];
    v[i] = v[j];
    v[j] = aux;
}

void SelectionSort(int *v, int n)
{
    int pm;
    int j;
    for (j = n - 1; j > 0; j--)
    {
        pm = max(v, 0, j);
        troca(v, pm, j);
    }
}
void BubleSort(int *v, int n)
{
    int j;
    int i;
    for ( j = n - 1; j > 0; j--)
    {
        for ( i = 0; i < 0; i++)
        {
            if (v[i] > v[i + 1])
            {
                troca(v, i, i++);
            }
        }
    }
}

void insertion(int*v, int k){
    int x = v[k];
    int i = k-1;
    while((i>= 0) && (v[i] > x )){
        v[i+1] = v[i];
        i--;
    }
    v[i+1] = x;
}

void merge(int* v, int p, int q, int r){
//1 alocae E e D vetores
//2 copiar vetor v[p...q] para E
//3 copiar vetor v[q+1...r] para D
//4 intercalar E e D em v
// 5 liber E e D
    int tamE = q - (p+1);
    int tamD = r - (q+2);
    int k,j,i;
    int* E = (int*) malloc (size_of(tamE));
    int* D = (int*) malloc (size_of(tamD));
    for(i = 0 ; i<tamE ; i++){
        E[i] = v[i];
    }
    for(j = 0 ; j<tamD ; j++){
        D[i] = v[i+tamE];
    }
    for(k = 0 ; k<tamD+tamE ; k++){
        if (E[tamE] <= E[tamD])
        {
        v[k] = E[tamE];
        tamE--;
            
        }else{
            v[k] = D[tamD];
            tamD--;
        }
        
    }
}
void counting_sorting(int* v, int n, int div, int base, int* temp){
    int i, t, c[base], acum= 0;
    memset(c, n*sizeof(int), 0);
    
    #define DIGIT(X) (X/div) % base

    for (i= 0 ; i <n ; i++) c[DIGIT(v[i])++];
    
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
    k = maxx(v, n);
    int * temp = malloc(sizeof(int)*n);
    while(k > 0){
        counting_sorting(v, n, div, 10, temp);
        div*=10;
        k/=10;
    }
    free(temp);
}