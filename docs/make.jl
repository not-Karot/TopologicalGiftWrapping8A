push!(LOAD_PATH,"../src/")
import Pkg;
Pkg.add("Documenter")
using Documenter, LinearAlgebraicRepresentation, TopologicalGiftWrapping8A
Lar = LinearAlgebraicRepresentation
using DocumenterTools: Themes


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
		"Funzioni del progetto" => [
			"Analisi"=> "funzioni.md",
			"Documentazione" => "docs_spatial_arrangement.md"
			],
		"Analisi delle prestazioni" => "AnalisiPrestazioni.md",
        "Ottimizzazione" => "analisi.md",
		"Riferimenti" => "riferimenti.md"
    ],
	modules=[TopologicalGiftWrapping8A]
)

deploydocs(
    repo="github.com/not-Karot/TopologicalGiftWrapping8A"
)

Themes.compile("docs/src/documenter-dark.scss", "docs/build/assets/themes/documenter-dark.css")
Themes.compile("docs/src/documenter-light.scss", "docs/build/assets/themes/documenter-light.css")
