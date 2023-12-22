section .data
    numero db 10       ; Dichiarazione e inizializzazione della variabile "numero" come byte (8 bit)
    nome db "John",0   ; Dichiarazione e inizializzazione della variabile "nome" come stringa null-terminata
    salario dq 1000.50 ; Dichiarazione e inizializzazione della variabile "salario" come double (64 bit)

section .text
global _start

_start:
    ; Chiamata al metodo "StampareMessaggio"
    call StampareMessaggio

    ; Dichiarazione della variabile "eta"
    mov eax, 25
    cmp eax, 18
    jge maggiorenne
    ; Se non è maggiorenne
    mov edx, msg_minorenne
    jmp stampa_messaggio
maggiorenne:
    ; Se è maggiorenne
    mov edx, msg_maggiorenne
stampa_messaggio:
    ; Stampa il messaggio
    mov eax, 4
    mov ebx, 1
    mov ecx, edx
    mov edx, len_messaggio
    int 0x80

    ; Ciclo for
    mov ecx, 0  ; Inizializza l'indice del ciclo a 0
ciclo_for:
    cmp ecx, 5  ; Confronta l'indice con 5
    jge ciclo_while  ; Se maggiore o uguale a 5, esci dal ciclo
    ; Stampa l'indice
    push ecx
    call stampa_intero
    add esp, 4  ; Pulisci lo stack
    inc ecx     ; Incrementa l'indice
    jmp ciclo_for

    ; Ciclo while
ciclo_while:
    cmp dword [contatore], 5  ; Confronta "contatore" con 5
    jge switch_case  ; Se maggiore o uguale a 5, vai allo switch
    ; Stampa "contatore"
    mov eax, [contatore]
    push eax
    call stampa_intero
    add esp, 4  ; Pulisci lo stack
    ; Incrementa "contatore"
    inc dword [contatore]
    jmp ciclo_while

    ; Switch
switch_case:
    mov edx, msg_inserisci_giorno
    mov eax, 4
    mov ebx, 1
    mov ecx, edx
    mov edx, len_messaggio
    int 0x80
    ; Leggi l'input dell'utente
    mov eax, 3
    mov ebx, 0
    lea ecx, [giorno]
    mov edx, 1
    int 0x80
    ; Esegui lo switch
    mov eax, [giorno]
    cmp eax, 1
    je lunedi
    cmp eax, 2
    je martedi
    cmp eax, 3
    je mercoledi
    cmp eax, 4
    je giovedi
    cmp eax, 5
    je venerdi
    cmp eax, 6
    je sabato
    cmp eax, 7
    je domenica
    ; Default case
    mov edx, msg_giorno_non_valido
lunedi:
    mov edx, msg_lunedi
martedi:
    mov edx, msg_martedi
mercoledi:
    mov edx, msg_mercoledi
giovedi:
    mov edx, msg_giovedi
venerdi:
    mov edx, msg_venerdi
sabato:
    mov edx, msg_sabato
domenica:
    mov edx, msg_domenica
stampa_giorno:
    mov eax, 4
    mov ebx, 1
    mov ecx, edx
    mov edx, len_messaggio
    int 0x80

    ; Dichiarazione di un array di interi
    section .bss
    numeri resb 20  ; Riserva spazio per un array di 20 byte

    ; Inizializzazione di un array di stringhe
    section .data
    nomi db "Alice",0
         db "Bob",0
         db "Charlie",0

    ; Accesso agli elementi di un array
    mov eax, [numeri]     ; Accesso al primo elemento dell'array "numeri"
    mov ebx, [numeri+4]   ; Accesso al secondo elemento dell'array "numeri"
    mov ecx, [nomi+6]     ; Accesso al secondo elemento dell'array "nomi"

    ; Modifica degli elementi di un array
    mov dword [numeri+8], 42  ; Modifica il terzo elemento dell'array "numeri"
    mov byte [nomi], 'E'     ; Modifica il primo carattere dell'array "nomi"

    ; Ottenere la lunghezza di un array
    mov eax, 20  ; La lunghezza dell'array "numeri" è 20 byte
    mov ebx, 12  ; La lunghezza dell'array "nomi" è 12 byte

    ; Iterazione attraverso un array
    mov ecx, numeri  ; Puntatore all'array "numeri"
    mov edx, 0       ; Inizializza l'indice a 0
itera_array_numeri:
    cmp edx, 20      ; Confronta l'indice con la lunghezza dell'array
    jge itera_array_nomi  ; Se maggiore o uguale alla lunghezza, vai all'array "nomi"
    ; Stampa il numero
    mov eax, [ecx+edx]
    push eax
    call stampa_intero
    add esp, 4
    inc edx          ; Incrementa l'indice
    jmp itera_array_numeri
itera_array_nomi:
    mov ecx, nomi    ; Puntatore all'array "nomi"
    mov edx, 0       ; Inizializza l'indice a 0
itera_array_nomi:
    cmp edx, 12      ; Confronta l'indice con la lunghezza dell'array
    jge array_multidimensionali  ; Se maggiore o uguale alla lunghezza, vai alle matrici
    ; Stampa il carattere
    mov al, [ecx+edx]
    movzx eax, al
    push eax
    call stampa_carattere
    inc edx          ; Incrementa l'indice
    jmp itera_array_nomi

    ; Array multidimensionali
array_multidimensionali:
    ; Creazione di una matrice 3x3
    mov ecx, 0       ; Inizializza l'indice di riga a 0
    mov esi, matrice
inizializza_matrice:
    cmp ecx, 3       ; Confronta l'indice di riga con 3
    jge fine_matrice  ; Se maggiore o uguale a 3, termina l'inizializzazione
    mov edx, 0       ; Inizializza l'indice di colonna a 0
inizializza_riga:
    cmp edx, 3       ; Confronta l'indice di colonna con 3
    jge prossima_riga ; Se maggiore o uguale a 3, passa alla prossima riga
    ; Inizializza l'elemento della matrice a 0
    mov dword [esi], 0
    add esi, 4       ; Passa all'elemento successivo
    inc edx          ; Incrementa l'indice di colonna
    jmp inizializza_riga
prossima_riga:
    inc ecx          ; Incrementa l'indice di riga
    jmp inizializza_matrice
fine_matrice:
    ; Accesso all'elemento (2, 2) della matrice
    mov eax, matrice
    add eax, 4*2    ; Si sposta alla terza riga (indice 2)
    add eax, 4*2    ; Si sposta alla terza colonna (indice 2)
    mov eax, [eax]  ; Carica il valore dell'elemento (2, 2)
    ; Ora "eax" contiene il valore dell'elemento (2, 2)

    ; Lista
    section .data
    lista_nomi db "Alice",0
              db "Bob",0
    section .bss
    puntatore_lista resd 1  ; Puntatore alla lista

    ; Inizializzazione della lista
    mov eax, lista_nomi
    mov [puntatore_lista], eax

    ; Classe e oggetto
    section .data
    persona1_nome db "Maria",0
    persona1_eta dd 30

    ; Creazione di un oggetto Persona
    mov eax, persona1_nome
    mov [persona1+0], eax
    mov eax, persona1_eta
    mov [persona1+4], eax

    ; Termina il programma
    mov eax, 1
    mov ebx, 0
    int 0x80

; Funzione per stampare un intero
stampa_intero:
    ; Input: eax = numero intero da stampare
    ; Output: Nessuno (stampa il numero)
    pusha          ; Salva tutti i registri
    mov eax, [esp+32]  ; Recupera il parametro dalla pila
    mov ebx, 10    ; Base per la conversione
    xor edx, edx   ; Inizializza edx a 0 per la divisione
    mov ecx, 10    ; Inizializza il contatore delle cifre a 10
converti_cifre:
    div ebx        ; Dividi eax per 10, il risultato è in eax, il resto in edx
    add dl, '0'    ; Converti il resto in carattere
    mov [esp+ecx], dl  ; Salva il carattere nella pila
    dec ecx        ; Decrementa il contatore delle cifre
    test eax, eax  ; Verifica se eax è diventato zero
    jnz converti_cifre  ; Se non è zero, continua a convertire le cifre
    ; Stampa le cifre convertite
    mov eax, 4
    mov ebx, 1
    lea ecx, [esp+ecx+1]  ; Puntatore alla prima cifra convertita
    sub edx, ecx   ; Calcola il numero di cifre
    add ecx, edx   ; Puntatore alla prima cifra convertita
    mov edx, ecx   ; Lunghezza del messaggio
    int 0x80
    popa           ; Ripristina tutti i registri
    ret

; Funzione per stampare un carattere
stampa_carattere:
    ; Input: al = carattere da stampare
    ; Output: Nessuno (stampa il carattere)
    mov eax, 4
    mov ebx, 1
    mov ecx, esp   ; Puntatore al carattere da stampare
    mov edx, 1     ; Lunghezza del messaggio (1 carattere)
    int 0x80
    ret

section .data
    msg_maggiorenne db "Sei maggiorenne.",0
    msg_minorenne db "Sei minorenne.",0
    msg_inserisci_giorno db "Inserisci un giorno della settimana (1-7):",0
    msg_lunedi db "Lunedì",0
    msg_martedi db "Martedì",0
    msg_mercoledi db "Mercoledì",0
    msg_giovedi db "Giovedì",0
    msg_venerdi db "Venerdì",0
    msg_sabato db "Sabato",0
    msg_domenica db "Domenica",0
    msg_giorno_non_valido db "Giorno non valido",0
    len_messaggio equ $ - msg_maggiorenne
