#include "tad_timer.h"
#include <stdlib.h>
#include <stdbool.h>
#include <time.h>

/*******************************************************************
*  ESPECIFICAÇÃO DOS DADOS
*******************************************************************/
struct timer{
    time_t inicio;
    time_t fim;
    time_t tempo;
};

/*******************************************************************
*  IMPLEMENTAÇÃO DA FUNÇÕES
*******************************************************************/
/**
 * Cria um timer
 */
Timer* timer_criar(){
    Timer* t = (Timer*)malloc(sizeof(Timer));
    timer_reset(t);
    return t;
}

/**
 * Destroi um timer
 */
void timer_desalocar(Timer** endereco){
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
    t->tempo = t->fim - t->inicio;  
}

/**
 * Reinicia o timer
 */
void timer_reset(Timer* t){
    t->inicio = -1;
    t->fim = -1;
    t->tempo = -1;
    
}

/**
 * Devolve o resultado.
 * Caso o timer ainda não tenha finalizado devolve -1
 */
float timer_resultado(Timer* t){    
    if(t->tempo == -1) return -1;
        
    return t->tempo;
}