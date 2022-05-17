#include<stdio.h>

void bin(int n){
    if(n<2){
        printf("%d",n);

    }else{
        bin(n/2);
        printf("%d",n%2);
    }
}
int main(){
    bin(22);
    return 0;
}