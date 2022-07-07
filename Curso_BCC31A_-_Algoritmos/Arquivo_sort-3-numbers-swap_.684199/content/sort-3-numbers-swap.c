#include <stdio.h>

// Utiliza troca de variaveis.
// melhor caso: 3 comparacoes
// pior caso: 3 comparacoes

int main(void) {
  int a,b,c;
  printf("Entre com os numeros:\n>_ ");
  scanf("%d %d %d", &a, &b, &c);

  // colocar o menor em a
  if (b < a) {
    int swap = a;
    a = b;
    b = swap;
  }
  if (c < a) {
    int swap = a;
    a = c;
    c = swap;
  }

  // agora que o menor esta em a, basta compara b e c
  if (c < b) {
    int swap = b;
    b = c;
    c = swap;
  }

  printf("%d %d %d\n", a, b, c);

  return 0;
}
