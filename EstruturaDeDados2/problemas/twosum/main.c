#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "ordenacao.h"
#include "utils.h"

bool twosum_bruteforce(int *v, int n, int x)
{
    int i, j;
    for( i=0 ; i<n-2 ;i++){
        for( j=i+1 ; j<n ; j++){
            if(( i!=j ) && (v[i]+v[j] == x)){
                printf("%d + %d = %d\n",v[i],v[j], x);
                return true;
            }
        }
    }
    return false;
}

bool twosum_sort(int *v , int n,int x){
    quicksort(v,n);
    int i = 0, j= n-1;
    while(i != j){
        int soma = v[i] + v[j];
        if(soma == x){
            printf("%d + %d = %d\n",v[i],v[j], x);
        return true;
        } else{
            if(x < soma){
                j--;
            }else{
                i++;
            }
        }
    }
}

int main(int argc, char** argv)
{
    // int v[] = {2, -1, 5, 8, 7, 7};
    // int n = 6;
    // twosum_bruteforce(v, n, 14);
   int n = atoi(argv[1]);
   int *v = random_vector(n,n,10);
   twosum_sort(v,n,n/2);
 //make 
 //time ./main 100000
    return EXIT_SUCCESS;
}



