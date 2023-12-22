#include <iostream>
#include <vector>
#include <string>

// Dichiarazione delle variabili
int numero = 10;
std::string nome = "John";
double salario = 1000.50;

// Dichiarazione di una funzione
void StampareMessaggio()
{
    std::cout << "Ciao, mondo!" << std::endl;
}

int main()
{
    // Condizionali if-else
    int eta = 25;

    if (eta >= 18)
    {
        std::cout << "Sei maggiorenne." << std::endl;
    }
    else
    {
        std::cout << "Sei minorenne." << std::endl;
    }

    // Ciclo for
    for (int i = 0; i < 5; i++)
    {
        std::cout << i << std::endl;
    }

    // Ciclo while
    int contatore = 0;
    while (contatore < 5)
    {
        std::cout << contatore << std::endl;
        contatore++;
    }

    // Switch
    std::cout << "Inserisci un giorno della settimana (1-7): ";
    int giorno;
    std::cin >> giorno;
    std::string nomeGiorno;

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
    std::cout << "Il giorno corrispondente al numero " << giorno << " è " << nomeGiorno << "." << std::endl;

    // Dichiarazione di array
    int numeri[5]; // Dichiarazione di un array di interi
    std::string nomi[] = { "Alice", "Bob", "Charlie" }; // Dichiarazione di un array di stringhe inizializzato

    // Inizializzazione di un array
    int numeri[] = { 1, 2, 3, 4, 5 };

    // Accesso agli elementi di un array
    int primoNumero = numeri[0]; // Accesso al primo elemento dell'array
    std::string secondoNome = nomi[1]; // Accesso al secondo elemento dell'array

    // Modifica degli elementi di un array
    numeri[2] = 42; // Modifica il terzo elemento dell'array
    nomi[0] = "Eve"; // Modifica il primo elemento dell'array

    // Ottenere la lunghezza di un array
    int lunghezzaNumeri = sizeof(numeri) / sizeof(numeri[0]); // Restituisce la lunghezza dell'array numeri
    int lunghezzaNomi = sizeof(nomi) / sizeof(nomi[0]); // Restituisce la lunghezza dell'array nomi

    // Iterazione attraverso un array
    for (int i = 0; i < lunghezzaNumeri; i++)
    {
        std::cout << numeri[i] << std::endl; // Stampa ciascun elemento dell'array numeri
    }

    for (int i = 0; i < lunghezzaNomi; i++)
    {
        std::cout << nomi[i] << std::endl; // Stampa ciascun elemento dell'array nomi
    }

    // Array multidimensionali
    int matrice[3][3] = { {0} }; // Creazione di una matrice 3x3

    matrice[0][0] = 1;
    matrice[1][1] = 2;
    int valore = matrice[2][2]; // Accesso all'elemento (2, 2) della matrice

    // Lista (utilizzando std::vector)
    std::vector<std::string> nomiLista;
    nomiLista.push_back("Alice");
    nomiLista.push_back("Bob");

    // Classe e oggetto
    class Persona
    {
    public:
        std::string Nome;
        int Età;
    };

    Persona persona1;
    persona1.Nome = "Maria";
    persona1.Età = 30;

    return 0;
}
