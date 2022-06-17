# Calcolo dei confini

Nella maggior parte dei casi, l'ambiente di calcolo geometrico di  
destinazione è in grado di visualizzare, più in generale di gestire, un  
modello solido utilizzando solamente una rappresentazione dei  
confini/bordi, tipicamente usando una triangolazione. È facile ottenere  
una tale rappresentazione moltiplicando la matrice dell'operatore  
3-boundary (bordi a tre dimensioni) $\delta_3 : C_3$ $\longmapsto  
C_2^\circlearrowleft$ per il vettore di coordinate C3 nello spazio  
dell'espressione solida, calcolato come termine binario nel nostro  
insieme algebrico[^1].\
Una volta ottenuta in questo modo la coordinata designata del vettore di  
bordo dell'oggetto solido, cioè la 2-catena formata dalle sue 2-celle  
orientate (le facce), queste devono essere raccolte da colonne in una  
"matrice facciale" sparsa e tradotta nella corrispondente matrice di  
1-cicli orientati di spigoli/edge, per moltiplicazioni destre di  
[$\delta_2$] per la matrice delle facce. I poligoni di  
confine/boundary generati (corrispondenti alle colonne della matrice  
prodotto sparsa) saranno normalmente triangolizzati e infine  
renderizzati dall'hardware grafico o esportati in formati di file  
grafici standard o qualsiasi altro formato geometrico necessario per  
l'applicazione prevista.\
\
*Definizione Complessi Geometrici LAR*: è utile ricordare che per  
mostrare una triangolarizzazione di facce di bordo nella loro propria  
posizione nello spazio, tutte le informazioni geometriche e topologiche  
necessarie sono contenute all'interno di $evaluatedLAR$ o in  
$GeometricComplex$ (GC), data la coppia :


$\mu : C_0 \longmapsto E^3, (\delta_2,\delta_1, \delta_0)  
\equiv V, (CF, FE, EV)$


dove V è di tipo $Matrix-Real$ con tre righe e colonne pari alla  
cardinalità di $C_0$ ed inoltre (CF, FE, EV) sono matrici sparse di  
co-bordi (coboundary). Le coppie ordinate di lettere da V, E, F, C,  
corrispondono alla sequenza coboundary che segue: Vertici → Bordo (edge)  
→ Facce → Celle espresso attraverso l'ordine sinistrorso Colonna → Riga  
di mappe matriciali di operatori.\
\
**Memorizzazione di Complessi Geometrici Lar:** La topologia di un  
3-complesso LAR è completamente rappresentata dagli operatori  
($\delta_2$,$\delta_1$, $\delta_0$) , cioè dagli array sparsi $(CF, FE, EV)$, fornendo le incidenze tra vertici, bordi e facce, sia per b-reps  (rappresentazione geometrica dai bordi) che per rappresentazioni cellulari.
