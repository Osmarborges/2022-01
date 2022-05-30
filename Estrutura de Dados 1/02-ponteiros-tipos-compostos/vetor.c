#include<stdio.h>
#include<stdlib.h>

int main(){

    short int v1[3] = {7,8,9};
    int v2[2] = {5,6};

    short int* p1;
    int* p2;

    p1 = v1;
    p2 = v2;

    printf("%u\n", v1); 
    printf("%u\n", p1); 
    
    printf("%d\n", v1[0]); 
    printf("%d\n", p1[0]); 

    printf("%d\n", *p1); 
    printf("%d\n", *v1); 




   
    


    



    

    return 0;
}