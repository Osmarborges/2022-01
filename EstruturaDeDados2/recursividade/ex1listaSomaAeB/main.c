#include <stdio.h>
/*
1) Escreva uma função recursiva para computar a + b, tal que a e b são inteiros não-negativos usando a
função sucessor definida como:
1 int sucessor(int x){
2 return x+1;
3 }
*/
int sucessor(int x){
 return x+1;
 }
 int soma(int a , int b){
    if ( b>0)
    return a + sucessor(b - 1); 
 }
int main(){    
    int x = soma(20 , 5);    
    printf("%d \n",x);
    return 0;
}