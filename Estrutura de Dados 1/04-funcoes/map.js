
function incrementa(n){
    return n+1
}

function decrementa(n){
    return n-1
}

vetor = [1,2,3,4,5]

vetor2 = vetor.map(decrementa)
// vetor2 = vetor.map(n => n-1)

console.log(vetor)
console.log(vetor2)