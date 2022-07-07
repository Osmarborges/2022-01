#include <stdio.h>

// SOMA DE DOIS NUMEROS INTEIROS
int main(void) {
  int a;
  int b;

  printf("Informe A:\n> ");
  scanf("%d", &a);

  printf("Informe B:\n> ");
  scanf("%d", &b);

  printf("Soma: %d + %d = %d", a, b, a + b);

  return 0;
}