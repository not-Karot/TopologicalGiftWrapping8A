# Ottimizzazione

Nel notebook *spatial arrangment 1* sono stati messe tutte le  
ottimizzazioni dovute all'analisi del codice iniziale di *LAR*. Siamo  
partiti valutando le prestazioni della singola funzione *spatial  
arrangment 1* con relativa tipicizzazione. Per la valutazione delle  
prestazioni si è utilizzata la macro *@btime*, metre per la  
tipicizzazione abbiamo usato la macro *@code warntype*. Quest'ultima  
macro genera una rappresentazione del codice che può essere utile per  
trovare espressioni che determinano l'incertezza del tipo. Dopo  
quest'analisi preliminare abbiamo subito migliorato un minimo i tipi di  
questa funzione ottenendo già un lieve miglioramento. Una volta superata  
questa fase abbiamo scelto di proseguire con l'ottimizzazione di due  
funzioni che sono utilizzate all'interno di *spatial arrangment 1*, che  
sono: *frag faces* e *merge vertices*. Oltre a valutare la  
tipicizzazione delle due funzioni abbiamo inserito all'interno una  
parallelizzazione del codice utilizzando due macro: *Threads.@threads* e  
*@async*. Una volta migliorate le due funzioni si è andato a verificare  
se effettivamente, dopo le modifiche da noi apportate, ci sia stato un  
miglioramento della funzione *spatial arrangment 1*. Si è cercato di  
testare le funzioni su tutti e tre i nostri calcolatori (due Mac ed un  
Windows), i quali avevano architetture fisiche differenti. Nel computer  
con Windows, inoltre, si è utilizzata una virtualizzazione del sistema  
Linux. Come risultato abbiamo ottenuto una effettiva ottimizzazione su  
un pc Mac e il Linux virtualizzato, ma in uno dei due Mac le prestazioni  
sono peggiorate. Si pensa che questo problema sia dovuto all'overhead  
della gestione dei Task, ma non ne abbiamo l'assoluta certezza. Ad ogni  
modo, al fine della valutazione delle nostre modifiche al codice si  
rimanda notebook spatial arrangment.