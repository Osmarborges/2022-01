#include <stdio.h>
#include <stdlib.h>

int main() {
    short int m[3][2] = {
        {10, 20},
        {30, 40},
        {50, 60}};
    
    printf("%u\n", m);
    printf("%u\n", &m[0][0]);
    printf("%d\n", m[0][0]);
    
    printf("%d\n", **m);

    

    return 0;
}