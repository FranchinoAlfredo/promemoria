<?php
// Dichiarazione di variabili
$numero = 10;
$nome = "John";
$salario = 1000.50;

// Dichiarazione di una funzione
function stampareMessaggio() {
    echo "Ciao, mondo!";
}

// Condizionali if-else
$eta = 25;

if ($eta >= 18) {
    echo "Sei maggiorenne.";
} else {
    echo "Sei minorenne.";
}

// Ciclo for
for ($i = 0; $i < 5; $i++) {
    echo $i;
}

// Ciclo while
$contatore = 0;
while ($contatore < 5) {
    echo $contatore;
    $contatore++;
}

// Switch
echo "Inserisci un giorno della settimana (1-7):";
$giorno = intval(readline());
$nomeGiorno = "";

switch ($giorno) {
    case 1:
        $nomeGiorno = "Lunedì";
        break;
    
    case 2:
        $nomeGiorno = "Martedì";
        break;
            
    case 3:
        $nomeGiorno = "Mercoledì";
        break;
    
    case 4:
        $nomeGiorno = "Giovedì";
        break;
    
    case 5:
        $nomeGiorno = "Venerdì";
        break;
    
    case 6:
        $nomeGiorno = "Sabato";
        break;
    
    case 7:
        $nomeGiorno = "Domenica";
        break;
    
    default:
        $nomeGiorno = "Giorno non valido";
        break;
}

echo "Il giorno corrispondente al numero $giorno è $nomeGiorno.";

// Dichiarazione di un array
$numeri = array(); // Dichiarazione di un array in PHP
$nomi = array(); // Dichiarazione di un array in PHP

// Inizializzazione di un array
$numeri = array(1, 2, 3, 4, 5); // Creazione di un array inizializzato con valori
$nomi = array("Alice", "Bob", "Charlie"); // Creazione di un array inizializzato con valori

// Accesso agli elementi di un array
$primoNumero = $numeri[0]; // Accesso al primo elemento dell'array
$secondoNome = $nomi[1]; // Accesso al secondo elemento dell'array

// Modifica degli elementi di un array
$numeri[2] = 42; // Modifica il terzo elemento dell'array
$nomi[0] = "Eve"; // Modifica il primo elemento dell'array

// Ottenere la lunghezza di un array
$lunghezzaNumeri = count($numeri); // Restituisce la lunghezza dell'array numeri
$lunghezzaNomi = count($nomi); // Restituisce la lunghezza dell'array nomi

// Iterazione attraverso un array
foreach ($numeri as $numero) {
    echo $numero; // Stampa ciascun elemento dell'array numeri
}

foreach ($nomi as $nome) {
    echo $nome; // Stampa ciascun elemento dell'array nomi
}

// Array multidimensionali
$matrice = array(
    array(1, 0, 0),
    array(0, 2, 0),
    array(0, 0, 3)
);
$valore = $matrice[2][2]; // Accesso all'elemento (2, 2) della matrice

// Lista (equivalente a un array dinamico)
$nomi = array();
array_push($nomi, "Alice");
array_push($nomi, "Bob");

// Classe e oggetto
class Persona {
    public $Nome;
    public $Età;
}

$persona1 = new Persona();
$persona1->Nome = "Maria";
$persona1->Età = 30;
?>
