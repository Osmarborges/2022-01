/**
  Exemplo de implementação de arquivo de registros (structs).
  Operações implementadas:
    - Gravar um vetor de registros em arquivo binário.
    - Obter um vetor de registros de um arquivo binário.
    - Obter um registro na posição especificada de um arquivo binário.
    - Substituir um registro na posição especificada de um arquivo binário.
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define BIN_FILE "./dados.txt"

// ESTRUTURA (REGISTRO)
///////////////////////////////////////////////////////////////////////

struct person {
    int id;
    char name[50]; // pemrite até 49 chars + '\0'
    int age;
};

typedef struct person Person;

// FUNCOES AUXILIARES
///////////////////////////////////////////////////////////////////////

/** 
  Imprime uma variável da estrututa Pessoa.
*/
void printPerson(Person p) {
    printf("{%2d, %-10s, %2d}\n", p.id, p.name, p.age);
}

/** 
  Imprimie um vetor de estruturas Pessoa.
*/
void printVec(char name[], int n, Person v[n]) {
    printf("Person v[%d]: %s\n", n, name);
    printf("POS ID  NAME       AGE\n");
    
    for (int i = 0; i < n; i++) {
        printf("%2d ", i);
        printPerson(v[i]);
    }
    printf("\n");
}

/** 
  Inicia vetor de Pessoas com valores aleatórios.
*/
void initVec(int n, Person v[n]) {
    char names[][50] = {"Joao", "Adriano", "Andre",
            "Carla", "Fabiana", "Marcia", "Joana"};

    for (int i = 0; i < n; i++) {
        Person p;
        p.id = i+1;
        strcpy(p.name, names[rand()%7]);
        p.age = rand() % 30 + 20;
        v[i] = p;
    }
}

// FUNCOES PARA PERSISTIR O VETOR DE PESSOAS EM ARQUIVO BINARIO
///////////////////////////////////////////////////////////////////////

/** 
  Escreve o vetor de Pessoas em um arquivo binário.
  O arquivo é apagado antes de escrever os dados (modo: "wb")
 */
void writeVec(int n, Person v[n]) {
    FILE *fp = fopen(BIN_FILE, "wb"); // wb = reescrita binária
    fwrite(v, sizeof(Person), n, fp);
    fclose(fp);
}

/**
  Lê o conteúdo do arquivo para o vetor de Pessoa.
*/
void readVec(int n, Person v[n]) {
    FILE *fp = fopen(BIN_FILE, "rb"); // rb = leitura binária
    fread(v, sizeof(Person), n, fp);
    fclose(fp);
}

/**
  Lê a Pessoa na posição indicada do arquivo e a devolve.
*/
Person readPos(int pos) {
    Person p;
    FILE *fp = fopen(BIN_FILE, "rb"); // rb = leitura binária
    fseek(fp, sizeof(Person)*pos, SEEK_SET);
    fread(&p, sizeof(Person), 1, fp);
    fclose(fp);
    return p;
}

/**
  Substitui a Pessoa na posição indicada do arquivo pela 
*/
void replacePos(Person p, int pos) {
    FILE *fp = fopen(BIN_FILE, "rb+"); // rb+ = leitura e escrita binária
    fseek(fp, sizeof(Person)*pos, SEEK_SET);
    fwrite(&p, sizeof(Person), 1, fp);
    fclose(fp);
}

// MAIN: teste das operações (funções) imeplementadas
///////////////////////////////////////////////////////////////////////

int main()
{
    // declara e inicia vetor de pessoas
    int n = 10;
    Person v[n];
    initVec(n, v);
    
    // imprime vetor e o escreve no arquivo binário
    printVec("vec1 - para escrever no arquivo", n, v);
    writeVec(n, v);

    // declara segundo vetor e o preenche com conteúdo lido do arquivo
    Person v2[n];
    readVec(n, v2);
    printVec("vec2 - lido do arquivo", n, v2);

    // sobrescreve, no arquivo, o registro na posição 5 pelo Joserwindows
    Person p = {15, "Joserwindows", 21};
    replacePos(p, 5);
    // sobrescreve, no arquivo, o registro na posição 9 pelo Debervaldo
    Person p2 = {25, "Debervaldo", 35};
    replacePos(p2, 9);

	// lê novamente conteúdo do arquivo e imprime
    readVec(n, v2);
    printVec("vec2 - lido do arquivo após substituição do registro 5", n, v2);

    return 0;
}
