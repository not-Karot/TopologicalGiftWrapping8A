## Complessi di celle

*Definizione d - Manifold* : un $manifold$ è uno spazio topologico  
che localmente è simile ad un altro spazio topologico ben conosciuto, ad  
esempio lo spazio euclideo n-dimensionale, ma che globalmente può avere  
proprietà geometriche differenti, ad esempio può essere "curvo"  
contrariamente allo spazio euclideo. Ogni punto di un manifold con d  
dimensioni ha un vicino che è omeomorfo, cioè simile ma non  
obbligatoriamente uguale del tutto, ad $E^3$, lo spazio euclidiano di  
d-dimensioni.\
\
*Definizione Cella* : una $p-cella$ è un $p-manifold$ con  
confini 0 $\leq$ p $\leq$ d i quali sono lineari a tratti, connessi,  
possibilmente non convessi e non contrattabili, non si storcono. Questa  
definizione si riferisce ai complessi cellulari di questo lavoro e nella  
nostra rappresentazione ci possono essere celle con buchi interni.\
Avremo a che fare con celle Piecewise-Linear (PL) (lineari a tratti)  
rispettivamente di dimensione 0, 1, 2 e 3. Va notato che le 2-celle e  
3-celle possono contenere dei fori (buchi), pur rimanendo collegati. In  
altre parole, le celle sono poliedri, cioè segmenti, poligoni e poliedri  
incorporati in uno spazio bi o tridimensionale.\
\
*Definizione complesso cellulare*: un $p-complesso$ cellulare è un  
insieme finito di celle che hanno al massimo dimensione $p$, insieme  
alle loro facce $r-dimensionali$ dei bordi con 0 $\leq$ r $\leq$ p. Una  
faccia è un elemento del confine lineare a tratti della cella, il quale  
soddisfa le condizioni di compatibilità di confine, che seguono:
- Due $p-celle$ sono boundary-compatible quando i loro punti di  
  intersezione contengono le stesse r-facce.\
- Un complesso cellulare di dimensione p è definito regolare quando  
  ogni r-cella, con 0\leq r\leqp , è una faccia di una p-cella\
  \
  *Definizione Skeleton*: Un $s-skeleton$ di un $p-complesso$ $\Lambda_p$,  
  con s $\leq$ p, è l'insieme $\Lambda_s$ di tutte le r-celle di $\Lambda_p$. Ogni scheletro di un complesso regolare è un sottocomplesso regolare.\
  \
  *Definizione Rappresentazione Geometrica*: La rappresentazione  
  algebrica lineare (LAR) ha introdotto l'uso di array binari sparsi per  
  calcolare e rappresentare una topologia algebrica di complessi  
  cellulari, ovvero spazi lineari di catene e operatori di (co)confine  
  lineari. (Quindi è una mappatura della disposizione geometrica con  
  matrici/array sparsi binari).\
  \
  *Definizione Spazio di supporto*: Lo spazio di supporto  
  |$\Lambda$| di un complesso cellulare è l'insieme dei punti dell'unione  
  delle proprie celle.\
  Una $p-catena$ può essere vista, forzando il linguaggio, come  
  una collezione di $p-celle$.