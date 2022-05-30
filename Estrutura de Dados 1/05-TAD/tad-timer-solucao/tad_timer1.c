#include "tad_timer.h"
#include <stdlib.h>
#include <time.h>

/*******************************************************************
*  ESPECIFICACAO DOS DADOS
*******************************************************************/
struct timer{
    char nome[200];
    time_t inicio;
    time_t fim;
    time_t total;
};

/*******************************************************************
*  IMPLEMENTACAO DAS FUNÇÕES
*******************************************************************/

/**
 * Cria um timer
 */
Timer* timer_criar(){
    Timer* novo = (Timer*) malloc(sizeof(Timer));
    timer_reset(novo);
    return novo;
}

/**
 * Destroi um timer
 */
void timer_desalocar(Timer** endereco){
    // Timer* t = *endereco;
    // free(t);
    free(*endereco);
    *endereco = NULL;
}

/**
 * Inicia o timer
 */
void timer_start(Timer* t){
    time(&(t->inicio));
}

/**
 * Para o timer
 */
void timer_stop(Timer* t){
    time(&(t->fim));
    t->total = t->fim - t->inicio;
}

/**
 * Reinicia o timer
 */
void timer_reset(Timer* t){
    t->inicio = 0;
    t->fim = 0;
    t->total = 0;
}

/**
 * Devolve o resultado.
 * Caso o timer ainda não tenha finalizado devolve -1
 */
float timer_resultado(Timer* t){
    if(t == NULL) return -1;
    if(t->inicio == 0) return -1;
    if(t->fim == 0) return -1;

    return (float) t->total;
}