#include <limits.h>
#include <stdlib.h>
#include <stdio.h>

void merge(int *v, int p, int q, int r)
{
    int i, j;
    int* e = malloc(sizeof(int) * (q-p+2));
    int* d = malloc(sizeof(int) * (r-q+1));
    int ne = q-p+1;
    int nd = r-q;
    for(i = 0; i < ne; i++)
        e[i] = v[p+i];
    e[ne] = INT_MAX;
    for(j = 0; j < nd; j++)
        d[j] = v[q+1+j];
    d[nd] = INT_MAX;
    i = 0;
    j = 0;
    for(int k = p; k <= r; k++)
    {
        if(e[i] <= d[j])
        {
            v[k] = e[i];
            i++;
        }
        else
        {
            v[k] = d[j];
            j++;
        }
    }
    free(e);
    free(d);
}
void MergeSort(int *v, int e, int d){
    if(e<d){
        int m = (d+e)/2;

        MergeSort(v,e,m);
        MergeSort(v ,m +1,d );
        merge(v, e, d, m);
    }
}