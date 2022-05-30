#include<stdio.h>
#include<stdlib.h>

int main(){

    int i = 10;
    int *p;
    p = &i;

    p = p + 1;

    printf("%u\n", &i);
    printf("%u\n", p);

    



    

    return 0;
}