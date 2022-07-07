#include <stdio.h>

/*
 * PROGRAMA PARA FAZER A CONTAGEM DE N VALORES DIGITADOS.
 * Utiliza quebra manual dentro do loop WHILE
 */ 

int main(void) {
  int num;  // recebe cada numero digitado
  int count = 0;// guarda a contagem dos numeros

  // Faz a leitura de numeros positivos
  // caso 0 ou negativo seja digitado, encerra o loop.
  // Utilza loop "infinito" while(true)
  while (1) { // true
    printf("Informe um número positivo:\n_> ");
    scanf("%d", &num);

    printf("\nNumero [%d]\n\n", num);
    if (num <= 0) {
      break; // se numero eh 0 ou negativo, quebra loop WHILE
    }
    count++; // contar apenas se continuar no loop
  } 

  // quando exibe a contagem, count contem somente a quantidade
  // de numeros positivos
  printf("Quantidades de numeros positivos: %d\n\n", count);
  
  return 0;
}