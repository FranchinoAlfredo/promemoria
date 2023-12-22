using System; // Fornisce accesso alle classi fondamentali del framework, come Console
using System.Collections.Generic; // Per utilizzare le collezioni generiche come List<T>
using System.Linq; // Per lavorare con le query LINQ
using System.Text; // Per lavorare con stringhe e StringBuilder
using System.Threading.Tasks; // Per supportare la programmazione asincrona

// dichiarazione variabili
int numero = 10;
string nome = "John";
double salario = 1000.50;

// dichiarazione di un metodo o funzione
public void StampareMessaggio()
{
    Console.WriteLine("Ciao, mondo!");
}

// condizionali if else
int eta = 25;

if (eta >= 18)
{
    Console.WriteLine("Sei maggiorenne.");
}
else
{
    Console.WriteLine("Sei minorenne.");
}

//ciclo for
for (int i = 0; i < 5; i++)
{
    Console.WriteLine(i);
}
//ciclo while
int contatore = 0;
while (contatore < 5)
{
    Console.WriteLine(contatore);
    contatore++;
}

//switch
Console.WriteLine("Inserisci un giorno della settimana (1-7):");
int giorno = int.Parse(Console.ReadLine());
string nomeGiorno;
switch (giorno)
 {
    case 1:
    omeGiorno = "Lunedì";
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
    omeGiorno = "Sabato";
    break;
    
    case 7:
    nomeGiorno = "Domenica";
    break;
    
    default:
    nomeGiorno = "Giorno non valido";
    break;
    }
Console.WriteLine($"Il giorno corrispondente al numero {giorno} è {nomeGiorno}.");

//dichiarazione array
int[] numeri; // Dichiarazione di un array di interi
string[] nomi; // Dichiarazione di un array di stringhe


//inizializzazione di un array
int[] numeri = new int[5]; // Creazione di un array di interi con una lunghezza di 5 elementi
string[] nomi = new string[] { "Alice", "Bob", "Charlie" }; // Creazione di un array di stringhe inizializzato con valori
int[] numeri = { 1, 2, 3, 4, 5 };

//accesso agli elementi di un array
int primoNumero = numeri[0]; // Accesso al primo elemento dell'array
string secondoNome = nomi[1]; // Accesso al secondo elemento dell'array

//modifica gli elementi di un array
numeri[2] = 42; // Modifica il terzo elemento dell'array
nomi[0] = "Eve"; // Modifica il primo elemento dell'array


//ottenere la lunghezza di un array
int lunghezzaNumeri = numeri.Length; // Restituisce la lunghezza dell'array numeri
int lunghezzaNomi = nomi.Length; // Restituisce la lunghezza dell'array nomi


//iterazione attraverso un array
foreach (int numero in numeri)
{
    Console.WriteLine(numero); // Stampa ciascun elemento dell'array numeri
}

foreach (string nome in nomi)
{
    Console.WriteLine(nome); // Stampa ciascun elemento dell'array nomi
}

//array multidimensionali
int[,] matrice = new int[3, 3]; // Creazione di una matrice 3x3
matrice[0, 0] = 1;
matrice[1, 1] = 2;
int valore = matrice[2, 2]; // Accesso all'elemento (2, 2) della matrice

//lista
List<string> nomi = new List<string>();
nomi.Add("Alice");
nomi.Add("Bob");

// classe e oggetto
class Persona
{
    public string Nome { get; set; }
    public int Età { get; set; }
}

Persona persona1 = new Persona();
persona1.Nome = "Maria";
persona1.Età = 30;
