module TopologicalGiftWrapping8A

using LinearAlgebraicRepresentation
using IntervalTrees
using NearestNeighbors
using Triangulate
using SparseArrays
using LinearAlgebra
using Distributed
Lar = LinearAlgebraicRepresentation

include("./spatial_arrangement.jl")
export spatial_arrangement

end # module
