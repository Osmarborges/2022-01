
function ehPar(n){
    if(n%2 == 0){
        return true
    }else{
        return false
    }
}

function ehImpar(n){
    return n%2 != 0 ? true : false
}
function ehNegativo(n){
    return n < 0 ? true : false
}

let vetor = [10,11,12,13,14,15,-16,-17]

let copia = vetor.filter(ehPar)

console.log(vetor)
console.log(copia)


int tamCopia = 0;
int* copia = filter(vetor, 8, ehPar, &tamCopia);
for(int i=0; i < tamCopia; i++){
    printf("%d ", copia[i]);
}


