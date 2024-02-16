### A Pluto.jl notebook ###
# v0.19.36

using Markdown
using InteractiveUtils

# ╔═╡ 970a424e-f589-41ed-a021-9632631f9f55
using LinearAlgebra

# ╔═╡ 04859820-ab0e-11ee-318a-69d2f61bf93c
md"""
# Basic Linear Algebra

Author: Andreas Noack Jensen (MIT & JuliaComputing) (https://twitter.com/anoackjensen?lang=en)
(with edits from Jane Herriman, then from Louis Fabrice Tshimanga)
"""

# ╔═╡ b303870c-2107-4445-af33-e7f407dea4c0
A = rand(1:4, 3,3)

# ╔═╡ b49bd39c-4c08-4213-93d5-c4de1867e167
x = fill(1.0, (3,))

# ╔═╡ 18ed3c89-af2c-448f-9866-91692a10a3e9
md"""
Notice that $A$ has type Array{Int64} but $x$ has type Array{Float64}. Julia defined the aliases Vector{Type}=Array{Type,1} and Matrix{Type}=Array{Type,2}. 

Many of the basic operations are the same as in other languages.
"""

# ╔═╡ 78fc1213-275a-485b-872f-06ca4a58ae1f
md"""
## Multiplication
"""

# ╔═╡ 7c508af1-5c24-4806-89b7-c210760fc4b0
b = A*x

# ╔═╡ da6cc653-9b9f-444a-b5b4-d108d21ff00f
md"""
## Transposition

`A'` is the conjugate adjoint, while $A^T$ is `transpose(A)`.
"""

# ╔═╡ 5955bf56-2bd4-4b8f-a3e9-e6fb7df4f265
A'

# ╔═╡ 68c9869c-9535-45a7-9338-839a9a553feb
transpose(A)

# ╔═╡ ccddc204-b5e8-4909-84bb-fe527801ae76
md"""
Here it's the same, since $A$ is real.
"""

# ╔═╡ dfe2d05c-a868-44d3-8c79-9ddfdd6c88d3
md"""
## Transposed multiplication

Julia allows omitting `*`
"""

# ╔═╡ 6e35dbe3-cc31-4ab2-b93b-a9ee83e2fcbf
A'A

# ╔═╡ b4c2a4c7-720d-4522-851f-583c07ace4da
md"""
## Solving linear systems

The problem $Ax=b$ for ***square*** $A$ is solved by the \ function.
"""

# ╔═╡ 528c74af-d944-42b0-89b8-e6519e91b382
A\b

# ╔═╡ 696b6ad5-6441-4866-97f0-e08e5faa639f
x

# ╔═╡ 60f52080-d434-47a6-9e56-2ad912f49340
md"""
`A\b` gives us the *least squares solution* if we have an overdetermined linear system (a "tall" matrix).
"""

# ╔═╡ 40f55f0e-efd0-4fe5-ac55-2db3270e3739
Atall = rand(3,2)

# ╔═╡ b20df6ad-710b-4504-8d70-f9b01a4b2908
Atall\b

# ╔═╡ 78e4ead1-f2ed-4b4d-a099-5f7e77a7b4f9
md"""
and the *minimum norm least squares solution* if we have a rank-deficient least squares problem
"""

# ╔═╡ acbc1960-e495-4614-a0b6-729821c22f90
# ╠═╡ disabled = true
#=╠═╡
v = rand(3)
  ╠═╡ =#

# ╔═╡ ef7a94e3-7d72-47ff-a4a3-5673a5995f1f
md"""
Julia also gives us the minimum norm solution when we have an underdetermined solution (a "short" matrix)
"""

# ╔═╡ 3128ad35-638d-430c-9b33-e0e8c12347a2
bshort = rand(2)

# ╔═╡ 9887e059-d1e4-4ba0-bea7-a9b3d0652e33
Ashort = rand(2, 3)

# ╔═╡ dc0122e5-0b00-48d3-8945-cd0861846102
Ashort\bshort

# ╔═╡ 7510dff1-2568-4da5-87ab-ed4df9e4eb77
md"""
## The LinearAlgebra library

While much of linear algebra is available in Julia by default (as shown above), there's a standard library named `LinearAlgebra` that brings in many more relevant names and functions. In particular, it provides factorizations and some structured matrix types.  As with all packages, you can bring these additional features into your session with a `using LinearAlgebra`.
"""

# ╔═╡ 0b417607-0b71-4565-9633-0c95519ec6a4
md"""
## Exercises

### 9.1

Take the inner product (or "dot" product) of a vector `v` with itself and assign it to variable `dot_v`.
"""

# ╔═╡ 1e2eedad-3e94-484a-b21f-58f67082e08a
# ╠═╡ disabled = true
#=╠═╡
v = rand(4,1)
  ╠═╡ =#

# ╔═╡ cb7b6fb1-e5be-42d5-bf9e-089f1dac4ddb
# ╠═╡ disabled = true
#=╠═╡
dot_v = v'v
  ╠═╡ =#

# ╔═╡ 6814ce6d-d713-4881-b725-ce0a7e0c6931
v = [1,2,3]

# ╔═╡ d69ed13c-ba35-45e8-9dcd-e6230d55530a
rankdef = hcat(v,v)

# ╔═╡ ab0b18f2-c4e8-4c1e-b6d1-dca84e90c969
rankdef\b

# ╔═╡ af047b14-c43b-4cdb-92ce-587f09332f24
dot_v = v' * v

# ╔═╡ 19ddbb1f-7f70-476a-bbde-d9bc306b59d0
@assert dot_v == 14

# ╔═╡ 8105f46b-fae4-410e-99fc-d98c75817554
md"""
### 9.2 
Take the outer product of a vector v with itself and assign it to variable `outer_v`
"""

# ╔═╡ 1b687004-d97e-452d-a031-e1d4c8e39138
outer_v = v * v'

# ╔═╡ 545d73c9-ab68-42ab-9dc7-3f9f22b30e50
@assert outer_v == [1 2 3
                    2 4 6
                    3 6 9]

# ╔═╡ 7d15c00a-2fb4-4409-8c26-937120777569
md"""
Use [LinearAlgebra.cross](https://docs.julialang.org/en/v1/stdlib/LinearAlgebra/#LinearAlgebra.cross) to compute the cross product of a vector v with itself and assign it to variable `cross_v`
"""

# ╔═╡ 5bf9879f-2ea9-4848-a688-ebb21ce67237
cross_v = LinearAlgebra.cross(v, v)

# ╔═╡ 43d2b87a-3856-4f47-893b-d477328f0afa
@assert cross_v == [0, 0, 0]

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
LinearAlgebra = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.10.0"
manifest_format = "2.0"
project_hash = "ac1187e548c6ab173ac57d4e72da1620216bce54"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "1.0.5+1"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "OpenBLAS_jll", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.23+2"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.8.0+1"
"""

# ╔═╡ Cell order:
# ╠═04859820-ab0e-11ee-318a-69d2f61bf93c
# ╠═b303870c-2107-4445-af33-e7f407dea4c0
# ╠═b49bd39c-4c08-4213-93d5-c4de1867e167
# ╠═18ed3c89-af2c-448f-9866-91692a10a3e9
# ╠═78fc1213-275a-485b-872f-06ca4a58ae1f
# ╠═7c508af1-5c24-4806-89b7-c210760fc4b0
# ╠═da6cc653-9b9f-444a-b5b4-d108d21ff00f
# ╠═5955bf56-2bd4-4b8f-a3e9-e6fb7df4f265
# ╠═68c9869c-9535-45a7-9338-839a9a553feb
# ╠═ccddc204-b5e8-4909-84bb-fe527801ae76
# ╠═dfe2d05c-a868-44d3-8c79-9ddfdd6c88d3
# ╠═6e35dbe3-cc31-4ab2-b93b-a9ee83e2fcbf
# ╠═b4c2a4c7-720d-4522-851f-583c07ace4da
# ╠═528c74af-d944-42b0-89b8-e6519e91b382
# ╠═696b6ad5-6441-4866-97f0-e08e5faa639f
# ╠═60f52080-d434-47a6-9e56-2ad912f49340
# ╠═40f55f0e-efd0-4fe5-ac55-2db3270e3739
# ╠═b20df6ad-710b-4504-8d70-f9b01a4b2908
# ╠═78e4ead1-f2ed-4b4d-a099-5f7e77a7b4f9
# ╠═acbc1960-e495-4614-a0b6-729821c22f90
# ╠═d69ed13c-ba35-45e8-9dcd-e6230d55530a
# ╠═ab0b18f2-c4e8-4c1e-b6d1-dca84e90c969
# ╠═ef7a94e3-7d72-47ff-a4a3-5673a5995f1f
# ╠═3128ad35-638d-430c-9b33-e0e8c12347a2
# ╠═9887e059-d1e4-4ba0-bea7-a9b3d0652e33
# ╠═dc0122e5-0b00-48d3-8945-cd0861846102
# ╠═7510dff1-2568-4da5-87ab-ed4df9e4eb77
# ╠═0b417607-0b71-4565-9633-0c95519ec6a4
# ╠═1e2eedad-3e94-484a-b21f-58f67082e08a
# ╠═cb7b6fb1-e5be-42d5-bf9e-089f1dac4ddb
# ╠═6814ce6d-d713-4881-b725-ce0a7e0c6931
# ╠═af047b14-c43b-4cdb-92ce-587f09332f24
# ╠═19ddbb1f-7f70-476a-bbde-d9bc306b59d0
# ╠═8105f46b-fae4-410e-99fc-d98c75817554
# ╠═1b687004-d97e-452d-a031-e1d4c8e39138
# ╠═545d73c9-ab68-42ab-9dc7-3f9f22b30e50
# ╠═7d15c00a-2fb4-4409-8c26-937120777569
# ╠═970a424e-f589-41ed-a021-9632631f9f55
# ╠═5bf9879f-2ea9-4848-a688-ebb21ce67237
# ╠═43d2b87a-3856-4f47-893b-d477328f0afa
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
