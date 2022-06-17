# Analisi prestazioni

In questa fase dell'evoluzione del nostro progetto abbiamo scelto di  
focalizzarci sul miglioramento di due funzioni principali: frag faces e  
merge vertices. Ai fini dell'ottimizzazione del progetto, ed eventuale  
valutazione delle prestazioni, abbiamo preso spunto dal libro *Julia  
High Performance*. Per quanto riguarda l'ottimizzazione con i Task si è  
scelto di utilizzare le seguenti *macro*:

-   *\@async*: racchiude un Task, si occupa di far iniziare subito  
    l'attività racchiusa nel task procedendo con qualsiasi operazione  
    che segue la macro.

-   *\@sync*: racchiude un Task. Ha comportamento opposto a la macro  
    precedente, infatti aspetta che tutti i task parallelizzati  
    terminino prima di eseguire il proprio Task.

-   *\@spawn*: crea un Task e lo assegna ad un qualsiasi thread  
    disponibile. Il Task verrà eseguito quando si libera il thread a cui  
    è assegnato.

-   *\@views*: converte le operazione di taglio su un array di una data  
    espressione per poi dare come output una variabile di tipo View

-   *\@simd*: viene utilizzato nei cicli *for* al fine di dare maggior  
    libertà nella gestione del ciclo.

-   *Threads.@threads*: questa macro è apposta davanti a un ciclo for  
    per indicare a Julia che il ciclo è una regione multi-thread.

Per quanto riguarda la valutazione delle prestazioni:

-   *\@benchmark*: valuta le prestazioni delle funzioni che racchiude,  
    chiamandola più volte ai fini di creare dei campioni per la  
    valutazione.

-   *\@btime*: simile a benchmark, ma con meno informazioni.Valuta le  
    prestazioni della funzione svariate volte al fine di ridurre il  
    rumore.

-   *\@profile*: esegue l'espressione a cui è assegnata collezionando  
    dei campioni periodicamente in modo tale da mostrare la gerarchia  
    delle funzioni ed il tempo di esecuzione di ogni riga.
