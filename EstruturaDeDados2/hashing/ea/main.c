#include <stdio.h>
#include <stdlib.h>
#include <stdio.h>

#include "hashtable_ea.h"

int collisions = 0;

int main(int argc, char** argv){
    
    int n, i, chave;    
    //enum probing_strategy ps;

    int seed = 0;



    srand(seed);
    THEA* th;

    th = THEA_Criar(3);
    THEA_Inserir(th, 10, 5);
    THEA_Inserir(th, 11, 7);
    THEA_Inserir(th, 3,  7);

    for(i = 0; i < n; i++){
        chave = (rand() % n*10);
        THEA_Inserir(th, chave, (chave + (rand() % 10)));
    }
    int j;
    for(j=0; j<th->m;i++){
        printf("%d -> %d (%d)\n", th->TH[j].chave, th->TH[j].valor, th->TH[j].estado);
    }


    //printf("collisions = %d\n", collisions);

}
