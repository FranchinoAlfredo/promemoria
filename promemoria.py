# Dichiarazione delle variabili
numero = 10
nome = "John"
salario = 1000.50

# Dichiarazione di una funzione
def stampa_messaggio():
    print("Ciao, mondo!")

# Condizionali if-else
eta = 25

if eta >= 18:
    print("Sei maggiorenne.")
else:
    print("Sei minorenne.")

# Ciclo for
for i in range(5):
    print(i)

# Ciclo while
contatore = 0
while contatore < 5:
    print(contatore)
    contatore += 1

# Switch - In Python, il costrutto switch non esiste nativamente, ma puoi simulare lo stesso comportamento con un dizionario.
print("Inserisci un giorno della settimana (1-7):")
giorno = int(input())
nomi_giorni = {
    1: "Lunedì",
    2: "Martedì",
    3: "Mercoledì",
    4: "Giovedì",
    5: "Venerdì",
    6: "Sabato",
    7: "Domenica"
}
nome_giorno = nomi_giorni.get(giorno, "Giorno non valido")
print(f"Il giorno corrispondente al numero {giorno} è {nome_giorno}.")

# Dichiarazione di una lista
nomi = ["Alice", "Bob", "Charlie"]

# Accesso agli elementi di una lista
primo_nome = nomi[0]
secondo_nome = nomi[1]

# Modifica degli elementi di una lista
nomi[2] = "Eve"

# Ottenere la lunghezza di una lista
lunghezza_nomi = len(nomi)

# Iterazione attraverso una lista
for nome in nomi:
    print(nome)

# Array multidimensionali - In Python, è possibile utilizzare liste annidate per creare una struttura simile a una matrice
matrice = [[0, 0, 0], [0, 0, 0], [0, 0, 0]]
matrice[0][0] = 1
matrice[1][1] = 2
valore = matrice[2][2]

# Classe 
class Persona:
    def __init__(self, nome, eta):
        self.nome = nome
        self.eta = eta
#oggetto
persona1 = Persona("Maria", 30)
