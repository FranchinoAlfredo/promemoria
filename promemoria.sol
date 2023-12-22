// Dichiarazione di variabili 
uint numero = 10; // Esempio di dichiarazione di una variabile unsigned integer
string nome = "John"; // Esempio di dichiarazione di una variabile stringa
uint256 salario = 1000.50 ether; // Esempio di dichiarazione di una variabile unsigned integer con ether

// Dichiarazione di una funzione
function stampareMessaggio() public {
    // Esempio di una funzione in Solidity
    // I comandi di output possono essere gestiti tramite eventi o mediante il ritorno dei valori
    emit LogMessaggio("Ciao, mondo!");
}

// Condizionali if-else
uint256 eta = 25;
if (eta >= 18) {
    // Esempio di condizionale in Solidity
    emit LogMessaggio("Sei maggiorenne.");
} else {
    emit LogMessaggio("Sei minorenne.");
}

// Ciclo for
for (uint i = 0; i < 5; i++) {
    // Esempio di ciclo for in Solidity
    emit LogNumero(i);
}

// Ciclo while
uint contatore = 0;
while (contatore < 5) {
    // Esempio di ciclo while in Solidity
    emit LogNumero(contatore);
    contatore++;
}

// Switch
uint8 giorno = 5; // Puoi usare uint8 per rappresentare un valore tra 1 e 7
string memory nomeGiorno;
if (giorno == 1) {
    nomeGiorno = "Lunedì";
} else if (giorno == 2) {
    nomeGiorno = "Martedì";
} else if (giorno == 3) {
    nomeGiorno = "Mercoledì";
} else if (giorno == 4) {
    nomeGiorno = "Giovedì";
} else if (giorno == 5) {
    nomeGiorno = "Venerdì";
} else if (giorno == 6) {
    nomeGiorno = "Sabato";
} else if (giorno == 7) {
    nomeGiorno = "Domenica";
} else {
    nomeGiorno = "Giorno non valido";
}
emit LogMessaggio(string(abi.encodePacked("Il giorno corrispondente al numero ", toString(giorno), " è ", nomeGiorno, ".")));

// Dichiarazione di un array
uint[] numeri; // Esempio di dichiarazione di un array di unsigned integers
string[] nomi; // Esempio di dichiarazione di un array di stringhe

// Inizializzazione di un array
uint[] numeri = new uint[](5); // Creazione di un array di unsigned integers con una lunghezza di 5 elementi
string[] nomi = new string[](3); // Creazione di un array di stringhe con 3 elementi

// Accesso agli elementi di un array
uint primoNumero = numeri[0]; // Accesso al primo elemento dell'array numeri
string secondoNome = nomi[1]; // Accesso al secondo elemento dell'array nomi

// Modifica degli elementi di un array
numeri[2] = 42; // Modifica il terzo elemento dell'array numeri
nomi[0] = "Eve"; // Modifica il primo elemento dell'array nomi

// Ottenere la lunghezza di un array
uint lunghezzaNumeri = numeri.length; // Restituisce la lunghezza dell'array numeri
uint lunghezzaNomi = nomi.length; // Restituisce la lunghezza dell'array nomi

// Iterazione attraverso un array
for (uint i = 0; i < numeri.length; i++) {
    // Esempio di iterazione attraverso un array in Solidity
    emit LogNumero(numeri[i]);
}

// Array multidimensionali
uint[3][3] matrice; // Esempio di dichiarazione di una matrice 3x3 di unsigned integers
matrice[0][0] = 1;
matrice[1][1] = 2;
uint valore = matrice[2][2]; // Accesso all'elemento (2, 2) della matrice

// Lista
string[] nomi; // Esempio di dichiarazione di una lista di stringhe

// Classe e oggetto
struct Persona {
    string nome;
    uint256 eta;
}

Persona[] public persone; // Esempio di dichiarazione di un array di strutture Persona
Persona public persona1 = Persona("Maria", 30); // Esempio di creazione di un oggetto Persona
persone.push(persona1); // Aggiungi un oggetto Persona all'array persone


