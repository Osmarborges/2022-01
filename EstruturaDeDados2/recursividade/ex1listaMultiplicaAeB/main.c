#include <stdio.h>

int multiplica(int a, int b){
    if(a ==0)return 0;
    if (a==1)return b;
    return b + multiplica(a - 1, b);
}
int main(){
    multiplica(4, 2);
    return 0;
}