/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   main.c
 * Author: ACER
 *
 * Created on 29 de Maio de 2022, 15:43
 */

#include <stdio.h>
#include <stdlib.h>
typedef char byte;

/*
 * 
 */
void imprimirString(char* str){
   int i;
   
   for (i = 0; str[i] != '\0'; i++){   
   printf("%c \n",str[i]);
   }
}

int main(int argc, char** argv) {
   byte *str;
   str = malloc(10 * sizeof (byte));
   str[0] = 65;
   str[1] = 66;
   str[2] = 67;
   str[3] = 68;
   str[4] = 69;
   imprimirString(str);
   return (EXIT_SUCCESS);
}

