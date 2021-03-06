#include<stdio.h>
#include<stdlib.h>
#include<stdbool.h>

#include "pilha.h"

void teste_imprimir_recursivo(){
    Pilha* p1 = pilha_criar();
    pilha_empilhar(p1, 10);
    pilha_empilhar(p1, 20);
    pilha_empilhar(p1, 30);

    pilha_imprimir(p1);
    pilha_destruir(&p1);
}

int main(){

    teste_imprimir_recursivo();
    
    Pilha* p1 = pilha_criar();
    pilha_empilhar(p1, 10);
    pilha_empilhar(p1, 20);
    pilha_empilhar(p1, 30);

    char str[200];
    pilha_toString(p1, str);
    printf("%s\n", str); //[30,20,10]

    int elemento;

    pilha_topo(p1, &elemento);
    printf("Topo: %d\n", elemento); // 30
    
    while (!pilha_vazia(p1)){  // 30 20 10
        pilha_desempilhar(p1, &elemento);
        printf("Desempilhado: %d\n", elemento); 
    }

    
    /***********************************************
    * OPERAÇÕES NA PILHA VAZIA
    ************************************************/
    if (!pilha_desempilhar(p1, &elemento)){
        printf("Pilha vazia\n");
    }
    
    if (!pilha_topo(p1, &elemento)){
        printf("Pilha vazia\n");
    }

    pilha_toString(p1, str);
    printf("%s\n", str); //[]
    
    pilha_destruir(&p1);



    return 0;
}