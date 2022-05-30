#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<stdbool.h>

int main(){
    printf("(%u bytes) char   \n", sizeof(char));
    printf("(%u bytes) unsigned char\n", sizeof(unsigned char));
    printf("(%u bytes) int\n", sizeof(int));
    printf("(%u bytes) short int\n", sizeof(short int));
    printf("(%u bytes) unsigned short int\n", sizeof(unsigned short int));
    printf("(%u bytes) long long int\n", sizeof(long long int));
    printf("(%u bytes) unsigned long long int\n", sizeof(unsigned long long int));

    printf("\n");

    printf("(%u bytes) float\n", sizeof(float));
    printf("(%u bytes) double\n", sizeof(double));
    printf("(%u bytes) long double\n", sizeof(long double));

    
    
    return 0;
}