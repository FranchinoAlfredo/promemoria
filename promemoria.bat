@echo off
REM dichiarazione variabili
set numero=10
set nome=John
set salario=1000.50

REM dichiarazione di un metodo o funzione
:StampareMessaggio
echo Ciao, mondo!
goto :EOF

REM condizionali if else
set eta=25
if %eta% geq 18 (
    echo Sei maggiorenne.
) else (
    echo Sei minorenne.
)

REM ciclo for
for /l %%i in (0,1,4) do (
    echo %%i
)

REM ciclo while
set contatore=0
:while
if %contatore% lss 5 (
    echo %contatore%
    set /a "contatore+=1"
    goto :while
)

REM switch
set /p giorno=Inserisci un giorno della settimana (1-7):
set nomeGiorno=Giorno non valido
if %giorno%==1 set nomeGiorno=Lunedì
if %giorno%==2 set nomeGiorno=Martedì
if %giorno%==3 set nomeGiorno=Mercoledì
if %giorno%==4 set nomeGiorno=Giovedì
if %giorno%==5 set nomeGiorno=Venerdì
if %giorno%==6 set nomeGiorno=Sabato
if %giorno%==7 set nomeGiorno=Domenica
echo Il giorno corrispondente al numero %giorno% è %nomeGiorno%.

REM dichiarazione array
REM Non esiste un array esplicito in batch, quindi useremo variabili separate per simulare un array.

REM inizializzazione di un array
set numeri[0]=1
set numeri[1]=2
set numeri[2]=3
set numeri[3]=4
set numeri[4]=5
set nomi[0]=Alice
set nomi[1]=Bob
set nomi[2]=Charlie

REM accesso agli elementi di un array
set primoNumero=%numeri[0]%
set secondoNome=%nomi[1]%

REM modifica degli elementi di un array
set numeri[2]=42
set nomi[0]=Eve

REM ottenere la lunghezza di un array
set lunghezzaNumeri=5
set lunghezzaNomi=3

REM iterazione attraverso un array
for /l %%i in (0,1,4) do (
    echo !numeri[%%i]!
)
for /l %%i in (0,1,2) do (
    echo !nomi[%%i]!
)

REM array multidimensionali
REM Batch non supporta array multidimensionali.

REM lista
REM In batch, useremo variabili separate per simulare una lista.
set "nomiLista="
set "nomiLista=!nomiLista! Alice,"
set "nomiLista=!nomiLista! Bob,"

REM classe e oggetto
REM Batch non supporta oggetti come in C#. Simuliamo un oggetto usando variabili.
set persona1.Nome=Maria
set persona1.Età=30

REM Fine dello script batch
