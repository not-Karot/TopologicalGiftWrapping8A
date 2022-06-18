push!(LOAD_PATH,"../src/")
import Pkg;
Pkg.add("Documenter")
using Documenter, LinearAlgebraicRepresentation
Lar = LinearAlgebraicRepresentation


makedocs(
	format = Documenter.HTML(
		prettyurls = get(ENV, "CI", nothing) == "true"
	),
	sitename = "TopologicalGiftWrapping8A.jl",
	assets = ["assets/lar.css", "assets/logo.png"],
	pages = [
        "TopologicalGiftWrapping8A" => "index.md",
        "Introduzione" => "introduzione.md",
		"Stato dell'arte" => [
            "Complessi di catene e complessi di celle" => "ComplCatECelle.md",
            "Complessi di celle" => "ComplCelle.md",
			"Catene e Disposizioni" => "CatEDisp.md",
			"Cicli e confini" => "ciclieconfini.md"
        ],
        "Calcolo dei confini" => "CalcoloConfini.md",
        "Algoritmo Topological Gift Wrapping - TGW" => "AlgTGW.md",
		"Funzioni del progetto" => "funzioni.md",
		"Analisi delle prestazioni" => "AnalisiPrestazioni.md",
        "Ottimizzazione" => "analisi.md",
		"Riferimenti" => "riferimenti.md"
    ],
)
