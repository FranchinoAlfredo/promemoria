// Dichiarazione variabili
let numero = 10;
let nome = "John";
let salario = 1000.50;

// Dichiarazione di una funzione
function StampareMessaggio() {
    console.log("Ciao, mondo!");
}

// Condizionali if else
let eta = 25;

if (eta >= 18) {
    console.log("Sei maggiorenne.");
} else {
    console.log("Sei minorenne.");
}

// Ciclo for
for (let i = 0; i < 5; i++) {
    console.log(i);
}

// Ciclo while
let contatore = 0;
while (contatore < 5) {
    console.log(contatore);
    contatore++;
}

// Switch
console.log("Inserisci un giorno della settimana (1-7):");
let giorno = parseInt(prompt());
let nomeGiorno;
switch (giorno) {
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
console.log(`Il giorno corrispondente al numero ${giorno} è ${nomeGiorno}.`);

// Dichiarazione array
let numeri; // Dichiarazione di un array di interi
let nomi; // Dichiarazione di un array di stringhe

// Inizializzazione di un array
let numeri = new Array(5); // Creazione di un array di interi con una lunghezza di 5 elementi
let nomi = ["Alice", "Bob", "Charlie"]; // Creazione di un array di stringhe inizializzato con valori
let numeri = [1, 2, 3, 4, 5];

// Accesso agli elementi di un array
let primoNumero = numeri[0]; // Accesso al primo elemento dell'array
let secondoNome = nomi[1]; // Accesso al secondo elemento dell'array

// Modifica degli elementi di un array
numeri[2] = 42; // Modifica il terzo elemento dell'array
nomi[0] = "Eve"; // Modifica il primo elemento dell'array

// Ottenere la lunghezza di un array
let lunghezzaNumeri = numeri.length; // Restituisce la lunghezza dell'array numeri
let lunghezzaNomi = nomi.length; // Restituisce la lunghezza dell'array nomi

// Iterazione attraverso un array
numeri.forEach(function(numero) {
    console.log(numero); // Stampa ciascun elemento dell'array numeri
});

nomi.forEach(function(nome) {
    console.log(nome); // Stampa ciascun elemento dell'array nomi
});

// Array multidimensionali
let matrice = new Array(3);
for (let i = 0; i < 3; i++) {
    matrice[i] = new Array(3);
}

matrice[0][0] = 1;
matrice[1][1] = 2;
let valore = matrice[2][2]; // Accesso all'elemento (2, 2) della matrice

// Lista
let nomi = [];
nomi.push("Alice");
nomi.push("Bob");

// Classe e oggetto
class Persona {
    constructor() {
        this.Nome = "";
        this.Età = 0;
    }
}

let persona1 = new Persona();
persona1.Nome = "Maria";
persona1.Età = 30;
