#include <stdio.h>

// Utiliza comparacoes para cobrir todas as possiblidades.
// melhor caso: 2 comparacoes
// pior caso: 3 comparacoes

int main(void) {
  int a,b,c;
  printf("Entre com os numeros:\n>_ ");
  scanf("%d %d %d", &a, &b, &c);

  if (a < b) { // ? a ? b ?
    if (c < a) {
      printf("%d %d %d\n", c, a, b);
    } else { // a ? b ?
      if (c < b) {
        printf("%d %d %d\n", a, c, b);
      } else {
        printf("%d %d %d\n", a, b, c);
      }
    }
  } else { // ? b ? a ?
    if (c < b) {
      printf("%d %d %d\n", c, b, a);
    } else { // b ? a ?
      if (c < a) {
        printf("%d %d %d\n", b, c, a);
      } else {
        printf("%d %d %d\n", b, a, c);
      }
    }
  }

  return 0;
}
