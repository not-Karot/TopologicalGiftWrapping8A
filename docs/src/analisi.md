## Prestazioni
Con l'aiuto della libreria `Profile` è possibile
visualizzare a schermo un riferimento grafico relativo ai
tempi di esecuzione.

L'asse orizzontale, nel grafico prodotto, rappresenta la quantità di tempo (più precisamente, il numero di backtraces) 
speso su ogni riga, è quindi sensato focalizzare l'attenzione sulle righe relative alle barre più lunghe.

Di seguito il grafico prodotto da `Profile` per il metodo `spatial_arrangement`.

![Prestazioni di spatial_arrangement](./images/spatial_arrangement.png)

Si vede come la riga più in basso, quindi anche quella in cui il 
processo rimane fermo più tempo è relativa a `spatial_arrangement_1`.

Applichiamo quindi `Profile` a `spatial_arrangement_1` ottenendo il seguente
grafico.

![Prestazioni di spatial_arrangement_1](./images/spatial_arrangement_1.png)


> Il metodo `spatial_arrangement_1` presenta già una parallelizzazione che sfrutta
> un numero di Threads superiore ad 1. 

La funzione su cui focalizzarsi risulta essere quindi `frag_face`.

Nel notebook  [frag_face_parallelized.ipynb](https://github.com/not-Karot/TopologicalGiftWrapping8A/blob/main/notebooks/frag_face_parallelized.ipynb)
ci occuppiamo quindi di migliorare le prestazioni di questo metodo con un risultato
di riduzione spaziale e temporale di quasi il 20%, come mostrato dai seguenti benchmarks.


```julia
V, EV, FE = get_input()
@benchmark Lar.Arrangement.frag_face(Lar.Points(V),EV,FE,[2,3,4,5],2)
```

![frag_face](./images/frag_face.png)

```julia
V, EV, FE = get_input()
@benchmark frag_face_async(Lar.Points(V),EV,FE,[2,3,4,5],2)
```

![frag_face_async](./images/frag_face_async.png)

La parallelizzazione prosegue nel notebook [merge_vertices_parallelized.ipynb](https://github.com/not-Karot/TopologicalGiftWrapping8A/blob/main/notebooks/merge_vertices_parallelized.ipynb)
con i miglioramenti evidenziati dai successivi benchmarks.

```julia
V, EV, FE = get_input()
@benchmark Lar.Arrangement.merge_vertices($Lar.Points(V),$Lar.ChainOp(EV),$Lar.ChainOp(FE),$1e-8)
```

![merge_vertices](./images/merge_vertices.png)

```julia
V, EV, FE = get_input()
@benchmark merge_vertices_async(Lar.Points(V),Lar.ChainOp(EV),Lar.ChainOp(FE),1e-8)
```

![merge_vertices_async](./images/merge_vertices_async.png)


Inserendo le funzioni parallelizzate nel metodo `spatial_arrangement_1`,
i risultati diventano significativi, come mostrato dalle seguenti figure.
> [spatial_arrangement_1.ipynb](https://github.com/not-Karot/TopologicalGiftWrapping8A/blob/main/notebooks/spatial_arrangement_1)

```julia
V, EV, FE = get_input()
@benchmark Lar.Arrangement.spatial_arrangement_1(Lar.Points(V),Lar.ChainOp(EV),Lar.ChainOp(FE),false)
```
![spatial_arrangement_1_bench](./images/spatial_arrangement_1_bench.png)


```julia
V, EV, FE = get_input()
@benchmark spatial_arrangement_1_rev(Lar.Points(V),Lar.ChainOp(EV),Lar.ChainOp(FE)) 
```

![spatial_arrangement_1_rev](./images/spatial_arrangement_1_rev.png)

Il tempo di esecuzione si riduce quindi del 75%, mentre la memoria allocata di quasi il 60%.

Infine testiamo l'intero processo `spatial_arrangement` ottenendo i seguenti miglioramenti.

> [spatial_arrangement.ipynb](https://github.com/not-Karot/TopologicalGiftWrapping8A/blob/main/notebooks/spatial_arrangement)

```julia
@benchmark Lar.Arrangement.spatial_arrangement(W, cop_EV, cop_FE)
```
![spatial_arr](./images/spatial_arr.png)


```julia
@benchmark TGW.spatial_arrangement(W, cop_EV, cop_FE)
```

![spatial_arr_rev](./images/spatial_arr_rev.png)

>L'esecuzione dell'algoritmo TGW3D risulta essere quindi ridotta di un fattore circa 4, sia per quanto riguarda la memoria che il tempo
> utilizzati.


