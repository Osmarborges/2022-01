/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   hashtable_edd.h
 * Author: ACER
 *
 * Created on 29 de Maio de 2022, 18:06
 */

#pragma once

#include "ilist.h"

typedef struct THED {
    ILIST** t;
    size_t m, n;
} THED;

int THED_Hash(THED* HT, int chave);
THED* THED_Criar(int m, int alloc_step);
void THED_Inserir(THED* HT, int chave, int valor);
void THED_Remover(THED* HT, int chave);
INOH* THED_Buscar(THED* HT, int chave);
void THED_Imprimir(THED* HT);
size_t THED_N(THED* HT);
ILIST* THED_Chaves(THED* HT);
void THED_Destruir(THED* HT);

