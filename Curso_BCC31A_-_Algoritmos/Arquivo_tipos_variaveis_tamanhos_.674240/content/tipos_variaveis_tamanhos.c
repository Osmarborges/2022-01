#include <stdio.h>

// TIPOS, VARIAVEIS E TAMANHOS
int main(void) {
  int a = 5;
  long b = 2;
  float c = 5.4f;
  double d = 3.6;
  char e = 'a';

  printf("int: %ld bits\n", sizeof(a) * 8);
  printf("long: %ld bits\n", sizeof(b) * 8);
  printf("float: %ld bits\n", sizeof(c) * 8);
  printf("double: %ld bits\n", sizeof(d) * 8);
  printf("char: %ld bits\n", sizeof(e) * 8);

  return 0;
}