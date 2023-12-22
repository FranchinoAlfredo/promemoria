#include <stdio.h> // Per l'input/output standard
#include <string.h> // Per lavorare con le stringhe

// Dichiarazione di variabili
int numero = 10;
char nome[] = "John";
double salario = 1000.50;

// Dichiarazione di una funzione
void StampareMessaggio()
{
    printf("Ciao, mondo!\n");
}

// Condizionali if else
int eta = 25;

if (eta >= 18)
{
    printf("Sei maggiorenne.\n");
}
else
{
    printf("Sei minorenne.\n");
}

// Ciclo for
for (int i = 0; i < 5; i++)
{
    printf("%d\n", i);
}

// Ciclo while
int contatore = 0;
while (contatore < 5)
{
    printf("%d\n", contatore);
    contatore++;
}

// Switch
printf("Inserisci un giorno della settimana (1-7): ");
int giorno;
scanf("%d", &giorno);
char* nomeGiorno;
switch (giorno)
{
    case 1:
        nomeGiorno = "Lunedì";
        break;

    case 2:
        nomeGiorno = "Martedì";
        break;

    case 3:
        nomeGiorno = "Mercoledì";
        break;

    case 4:
        nomeGiorno = "Giovedì";
        break;

    case 5:
        nomeGiorno = "Venerdì";
        break;

    case 6:
        nomeGiorno = "Sabato";
        break;

    case 7:
        nomeGiorno = "Domenica";
        break;

    default:
        nomeGiorno = "Giorno non valido";
        break;
}
printf("Il giorno corrispondente al numero %d è %s.\n", giorno, nomeGiorno);

// Dichiarazione di array
int numeri[5]; // Dichiarazione di un array di interi
char* nomi[3]; // Dichiarazione di un array di stringhe

// Inizializzazione di un array
int numeri[] = {1, 2, 3, 4, 5}; // Creazione di un array di interi inizializzato
char* nomi[] = {"Alice", "Bob", "Charlie"}; // Creazione di un array di stringhe inizializzato

// Accesso agli elementi di un array
int primoNumero = numeri[0]; // Accesso al primo elemento dell'array numeri
char* secondoNome = nomi[1]; // Accesso al secondo elemento dell'array nomi

// Modifica degli elementi di un array
numeri[2] = 42; // Modifica il terzo elemento dell'array numeri

// Ottenere la lunghezza di un array
int lunghezzaNumeri = sizeof(numeri) / sizeof(numeri[0]); // Restituisce la lunghezza dell'array numeri
int lunghezzaNomi = sizeof(nomi) / sizeof(nomi[0]); // Restituisce la lunghezza dell'array nomi

// Iterazione attraverso un array
for (int i = 0; i < lunghezzaNumeri; i++)
{
    printf("%d\n", numeri[i]); // Stampa ciascun elemento dell'array numeri
}

for (int i = 0; i < lunghezzaNomi; i++)
{
    printf("%s\n", nomi[i]); // Stampa ciascun elemento dell'array nomi
}

// Array multidimensionali
int matrice[3][3]; // Creazione di una matrice 3x3
matrice[0][0] = 1;
matrice[1][1] = 2;
int valore = matrice[2][2]; // Accesso all'elemento (2, 2) della matrice

// Lista (simulata usando array)
char* nomiLista[2];
int lunghezzaLista = 0;

// Aggiungi elementi alla lista (simulazione)
nomiLista[lunghezzaLista++] = "Alice";
nomiLista[lunghezzaLista++] = "Bob";

// Classe e oggetto
struct Persona
{
    char Nome[50];
    int Età;
};

struct Persona persona1;
strcpy(persona1.Nome, "Maria");
persona1.Età = 30;
