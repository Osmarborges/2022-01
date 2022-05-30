#include <stdio.h>
#include <stdlib.h>
#include <string.h>


typedef struct aluno {
    unsigned int ra;
    char nome[12];
    float notas[3];
} Aluno;

int main() {
    Aluno a1 = {100, "Joao", {6.5, 8.2, 7.3}};
    Aluno a2;
    a2 = a1;

    Aluno *p1, *p2;
    char* str;
    float* v;

    p1 = &a1;
    p2 = &a2;
    v = a1.notas;
    str = a1.nome;

    (*p1).ra = 300;
    strcpy((*p1).nome, "Joaquim");
    (*p1).notas[0] = 10.0;
    (*p1).notas[1] = 9.8;
    (*p1).notas[1] = 9.9;
    

    

    return 0;
}