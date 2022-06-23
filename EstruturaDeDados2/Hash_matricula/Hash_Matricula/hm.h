/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   hm.h
 * Author: Osmar
 *
 * Created on 14 de Junho de 2022, 17:09
 */

#ifndef HM_H
#define HM_H

#ifdef __cplusplus
extern "C" {
#endif

   typedef struct aluno{
      int matricula;
      char nomw[30];
      float n1,n2,n3;
   }Aluno;
   typedef struct hash Hash;
   Hash* criaHash(int TABLE_SIZE);
   void liberaHash(Hash* ha);
   int valorString(char * str);
   int insereHash_SemColisao(Hash* ha, Aluno al);
   int buscaHash_SemColisao(Hash* ha, int mat, Aluno* al);
   int insereHash_EnderecoAberto(Hash* ha, Aluno al);
   int buscaHash_EnderecoAberto(Hash* ha,int mat, Aluno* al);


#ifdef __cplusplus
}
#endif

#endif /* HM_H */

