/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   main.c
 * Author: ACER
 *
 * Created on 14 de Junho de 2022, 17:07
 */

#include <stdio.h>
#include <stdlib.h>
#include "hm.h"

/*
 * 
 */
int main(int argc, char** argv) {
   Aluno* al;
   Hash* ha = criaHash(1427);
   int x = insereHash_SemColisao(ha, al);
   x == 1 ? printf("sucesso na insercao"): printf("falha na insercao"); 
   liberaHash(ha);
   
   return (EXIT_SUCCESS);
}

