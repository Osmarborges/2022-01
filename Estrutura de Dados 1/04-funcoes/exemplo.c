#include <stdio.h>
#include <string.h>
#include <stdbool.h>


int main(){

    char str[15] = "ABCDE";

    int tam = strlen(str);

    //----------------------------------------------------
    inverte(str);
    printf("%s\n", str);

    //----------------------------------------------------
    char* copia1 = inverte1(str);
    if(copia1 != NULL){
        printf("%s\n", copia1);
    }else{
        printf("Não deu certo\n");
    }
    free(copia1);

    //----------------------------------------------------
    char copia2[30];
    bool deuCerto = inverte2(str, copia2);
    

    if (deuCerto){
        printf("%s\n", copia2);
    }else{
        printf("Não deu certo\n");
    }






    printf("%s\n", str); // EDCBA

}

