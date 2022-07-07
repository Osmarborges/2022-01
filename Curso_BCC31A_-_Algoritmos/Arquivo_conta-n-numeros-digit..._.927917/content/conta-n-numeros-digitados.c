#include <stdio.h>

/*
 * PROGRAMA PARA FAZER A CONTAGEM DE N VALORES DIGITADOS.
 * Utiliza condicao do WHILE para quebra do loop
 */ 

int main(void) {
  int num = 1;  // recebe cada numero digitado
  int count = 0;// guarda a contagem dos numeros

  // Faz a leitura de numeros positivos
  // caso 0 ou negativo seja digitado, encerra o loop.
  // Como a condicao do WHILE eh verificada antes da leitura
  // do numero, NUM precisa ser iniciado com um valor que permita
  // entrar no loop.
  while (num > 0) {
    printf("Informe um número positivo:\n_> ");
    scanf("%d", &num);

    printf("\nNumero [%d]\n\n", num);
    count++; // vai contar o numero 0 ou negativo
  } 

  // quando exibe a contagem, desconta o ultimo 0 ou negativo contado
  printf("Quantidades de numeros positivos: %d\n\n", count-1);
  
  return 0;
}