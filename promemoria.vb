Imports System ' Fornisce accesso alle classi fondamentali del framework, come Console
Imports System.Collections.Generic ' Per utilizzare le collezioni generiche come List(Of T)
Imports System.Linq ' Per lavorare con le query LINQ
Imports System.Text ' Per lavorare con stringhe e StringBuilder
Imports System.Threading.Tasks ' Per supportare la programmazione asincrona

' Dichiarazione variabili
Dim numero As Integer = 10
Dim nome As String = "John"
Dim salario As Double = 1000.50

' Dichiarazione di un metodo o funzione
Public Sub StampareMessaggio()
    Console.WriteLine("Ciao, mondo!")
End Sub

' Condizionali if else
Dim eta As Integer = 25

If eta >= 18 Then
    Console.WriteLine("Sei maggiorenne.")
Else
    Console.WriteLine("Sei minorenne.")
End If

' Ciclo For
For i As Integer = 0 To 4
    Console.WriteLine(i)
Next

' Ciclo While
Dim contatore As Integer = 0
While contatore < 5
    Console.WriteLine(contatore)
    contatore += 1
End While

' Switch
Console.WriteLine("Inserisci un giorno della settimana (1-7):")
Dim giorno As Integer = Integer.Parse(Console.ReadLine())
Dim nomeGiorno As String

Select Case giorno
    Case 1
        nomeGiorno = "Lunedì"
    Case 2
        nomeGiorno = "Martedì"
    Case 3
        nomeGiorno = "Mercoledì"
    Case 4
        nomeGiorno = "Giovedì"
    Case 5
        nomeGiorno = "Venerdì"
    Case 6
        nomeGiorno = "Sabato"
    Case 7
        nomeGiorno = "Domenica"
    Case Else
        nomeGiorno = "Giorno non valido"
End Select

Console.WriteLine($"Il giorno corrispondente al numero {giorno} è {nomeGiorno}.")

' Dichiarazione array
Dim numeri() As Integer ' Dichiarazione di un array di interi
Dim nomi() As String ' Dichiarazione di un array di stringhe

' Inizializzazione di un array
Dim numeri() As Integer = New Integer(4) {} ' Creazione di un array di interi con una lunghezza di 5 elementi
Dim nomi() As String = {"Alice", "Bob", "Charlie"} ' Creazione di un array di stringhe inizializzato con valori
Dim numeri() As Integer = {1, 2, 3, 4, 5}

' Accesso agli elementi di un array
Dim primoNumero As Integer = numeri(0) ' Accesso al primo elemento dell'array
Dim secondoNome As String = nomi(1) ' Accesso al secondo elemento dell'array

' Modifica gli elementi di un array
numeri(2) = 42 ' Modifica il terzo elemento dell'array
nomi(0) = "Eve" ' Modifica il primo elemento dell'array

' Ottenere la lunghezza di un array
Dim lunghezzaNumeri As Integer = numeri.Length ' Restituisce la lunghezza dell'array numeri
Dim lunghezzaNomi As Integer = nomi.Length ' Restituisce la lunghezza dell'array nomi

' Iterazione attraverso un array
For Each numero As Integer In numeri
    Console.WriteLine(numero) ' Stampa ciascun elemento dell'array numeri
Next

For Each nome As String In nomi
    Console.WriteLine(nome) ' Stampa ciascun elemento dell'array nomi
Next

' Array multidimensionali
Dim matrice(2, 2) As Integer ' Creazione di una matrice 3x3
matrice(0, 0) = 1
matrice(1, 1) = 2
Dim valore As Integer = matrice(2, 2) ' Accesso all'elemento (2, 2) della matrice

' Lista
Dim nomi As New List(Of String)()
nomi.Add("Alice")
nomi.Add("Bob")

' Classe e oggetto
Public Class Persona
    Public Property Nome As String
    Public Property Età As Integer
End Class

Dim persona1 As New Persona()
persona1.Nome = "Maria"
persona1.Età = 30
