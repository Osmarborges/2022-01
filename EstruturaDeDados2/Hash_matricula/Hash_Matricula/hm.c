/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

#include <stdlib.h>
#include <stdio.h>
#include "hm.h"

struct hash{
   int qtd, TABLE_SIZE;
   Aluno **itens;
};

Hash* criaHash(int TABLE_SIZE){
   Hash * ha = (Hash*) malloc(sizeof(Hash));
   if( ha != NULL){
      int i;
      ha->TABLE_SIZE = TABLE_SIZE;
      ha->itens = (Aluno **) malloc(TABLE_SIZE * sizeof(Aluno*));
      if(ha->itens == NULL){
         free(ha);
         return NULL;
      }
      ha->qtd = 0;
      for (i = 0; i< ha->TABLE_SIZE; i++) {
         ha->itens[i] = NULL;
      }
      printf("Hash Alocada em Memória \n");

      return ha;
   }
}
   void liberaHash(Hash* ha){
      if(ha != NULL){
      int i;
      for (i = 0; i< ha->TABLE_SIZE; i++) {
         free(ha->itens[i]);
      }
      free(ha->itens);
      free(ha);
      printf("Memória liberada");
      }
   }
   int chaveDivisao(int chave, int TABLE_SIZE){
      // operaçao bit-a-bit elimina o bit de sinal do valor da chave
      //evita risco de overflow e obter numero negativo
      return (chave & 0x7FFFFFFF) % TABLE_SIZE;
   }
   int chaveMultiplicacao(int chave, int TABLE_SIZE){
      //metodo congruencia linear multiplicativo
      // usa A , 0<A<1 p/ multiplic o valor da chave que representa o elemento. 
      //em seguida a parte fracionaria resultante é multiplicada pelo tamanho da
      //tablea p/ calcular a posiçao do elemento 
      float A = 0.6180339887; // constante 0 < A 1;
      float valor = chave * A;
      valor = valor - (int) valor;
      return (int)(TABLE_SIZE * valor);
   }
   int valorString(char * str){
      //calcular um valor numerico a partir dos valores ASCII dos caracteres 
      // devemos considerar a posicao da letra
      int i, valor = 7; // para soma nao iniciar com zero
      int tam = strlen(str);
      int i;
   for (i = 0; i < tam; i++) 
      valor = 31 * valor + (int) str[i];// alguns estudos dizem q´o 31 é bom valor de multiplicar
      return valor; 
      // nao se deve somar caracteres, palavras com letras trocadas vai produzir o mesmo valor
      // cama: 99 + 97+ 109 + 97 = 402
      // maca: 109 + 97 + 99+ 97 = 402

   }
   int insereHash_SemColisao(Hash* ha, Aluno al){     	
      if (ha == NULL || ha->qtd == ha->TABLE_SIZE){	
         return 0; 
         printf(" falha na insercao\n");
      }
      int chave = al.matricula;	
      //int chave valorString (al .nome)	
      int pos = chaveDivisao (chave, ha->TABLE_SIZE);	
      Aluno* novo;	
      novo = (Aluno*) malloc (sizeof (Aluno));
      if (novo == NULL)	
         return 0;
      *novo = al;	
      ha->itens [pos] novo;	
      ha->qtd++;	
      return 1;	
   }
   int buscaHash_SemColisao(Hash* ha, int mat, Aluno* al);
   int insereHash_EnderecoAberto(Hash* ha, Aluno al);
   int buscaHash_EnderecoAberto(Hash* ha,int mat, Aluno* al);