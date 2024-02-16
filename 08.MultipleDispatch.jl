### A Pluto.jl notebook ###
# v0.19.36

using Markdown
using InteractiveUtils

# ╔═╡ de0be182-ab09-11ee-3445-1f1c88916d11
md"""
# Multiple dispatch

Multiple dispatch is a key feature of Julia, that makes software generic and fast.
As seen in previous notebooks, we can declare functions without specifying types they work on.
"""

# ╔═╡ de36a5f6-1003-42d4-8b07-e2fd13748765
f(x) = x.^2

# ╔═╡ 24be76ed-469c-4089-8a6f-c9a1acda4813
f(100)

# ╔═╡ 2e279cb4-3bd2-4e6e-946b-94bcd5c5f711
f([1,2,3])

# ╔═╡ 7869e5d8-cbb1-4048-b075-f2b4da7ecce2
f([1.,2.,3.])

# ╔═╡ a3e9f7e8-1860-4f41-9432-daa5ea92031d
md"""
## Specifying types of input arguments
"""

# ╔═╡ f2e056fe-81b8-48bb-a0f7-aef2a908ac21
foo(x::String, y::String) = println("Both x and y are strings!")

# ╔═╡ c34db684-2428-48c5-b6b5-028e83ca9b33
foo(x::Int, y::Int) = println("Both x and y are integers!")

# ╔═╡ bb7e1b05-f5f9-4bf1-a037-f72a5b8c12d3
md"""
The function still works as defined for the string inputs!
That is because the latter definition did not overwrite the function.
A new method was defined for the generic function.
A method is the specific implementation of a generic function for particular data types.
"""

# ╔═╡ 35dad71a-d469-4045-9b0d-3fb612e79cf8
methods(+)

# ╔═╡ 69630e41-dbdb-46a0-87be-43549d614bd6
md"""
Multiple dispatch makes code generic as the coder can conceptualize abstract, generic functions applied in many cases.
The code is also fast because Julia compiles for the specific method needed given a situation.

To check which method is used:
"""

# ╔═╡ 55ca7f98-7443-4d31-a6c3-96cb57239686
@which 3.0 + 3.0

# ╔═╡ bbbd9a62-fe3c-4fb4-896e-aa8ddf60e41e
md"""
We can continue to add methods to our generic function and also abstract on types.
Let's use the abstract type "Number".
"""

# ╔═╡ 3aa3b7e2-ea21-4a58-aaea-f2fe6cd92145
foo(x::Number, y::Number) = println("Both x and y are numbers!")

# ╔═╡ 8af53a0a-47fb-4ba7-8c0d-d8345f072b64
md"""
We can also add a fallback method that takes inputs of any type.
"""

# ╔═╡ 4d6390a4-ef84-41f0-9be9-a0bdcf166923
foo(x, y) = println("I take all types of input")

# ╔═╡ 8e947d77-0767-4a19-ab34-08ca1c505533
v = rand(3)

# ╔═╡ e04955fd-c825-443c-8c70-8a8d08116198
md"""
## Exercises

8.1

Extend the function `foo`, adding a method that takes only one input argument, which is of type `Bool`, and returns "foo with one boolean!", and check it.
"""

# ╔═╡ 26fa17ec-69f6-404d-af32-55ed8c840800
foo(x::Bool) = "foo with one boolean"

# ╔═╡ 74a238f6-1ff2-4e78-a1b6-a7f8882acd7d
foo("hello", "hi")

# ╔═╡ d3b86a54-534f-43e0-b4b0-84f25afa2e72
foo(1,"hey")

# ╔═╡ b78c1e1a-54ec-4a65-b221-3f8bf157a022
foo(1,2)

# ╔═╡ e3c298a1-d0d5-40e2-829b-73e3104a3073
foo("hey","hello")

# ╔═╡ a223abaf-c732-421b-80b6-e558d6d03d32
methods(foo)

# ╔═╡ 2798e0aa-f802-4123-8228-75a89778becf
@which foo(3,2)

# ╔═╡ 86085648-5acf-4d04-915b-bdf4dc9461bb
foo(3,2.4)

# ╔═╡ 46e7d6c2-922e-4f61-8ee7-4c2aa55e33b0
foo(v,v)

# ╔═╡ b46c820b-7de5-409f-bb94-751425e894b7
foo(true)

# ╔═╡ 31beb7f0-1cb1-4bb8-90ba-4aeb83ab5e98
@assert foo(true) == "foo with one boolean"

# ╔═╡ Cell order:
# ╠═de0be182-ab09-11ee-3445-1f1c88916d11
# ╠═de36a5f6-1003-42d4-8b07-e2fd13748765
# ╠═24be76ed-469c-4089-8a6f-c9a1acda4813
# ╠═2e279cb4-3bd2-4e6e-946b-94bcd5c5f711
# ╠═7869e5d8-cbb1-4048-b075-f2b4da7ecce2
# ╠═a3e9f7e8-1860-4f41-9432-daa5ea92031d
# ╠═f2e056fe-81b8-48bb-a0f7-aef2a908ac21
# ╠═74a238f6-1ff2-4e78-a1b6-a7f8882acd7d
# ╠═d3b86a54-534f-43e0-b4b0-84f25afa2e72
# ╠═c34db684-2428-48c5-b6b5-028e83ca9b33
# ╠═b78c1e1a-54ec-4a65-b221-3f8bf157a022
# ╠═e3c298a1-d0d5-40e2-829b-73e3104a3073
# ╠═bb7e1b05-f5f9-4bf1-a037-f72a5b8c12d3
# ╠═a223abaf-c732-421b-80b6-e558d6d03d32
# ╠═35dad71a-d469-4045-9b0d-3fb612e79cf8
# ╠═69630e41-dbdb-46a0-87be-43549d614bd6
# ╠═2798e0aa-f802-4123-8228-75a89778becf
# ╠═55ca7f98-7443-4d31-a6c3-96cb57239686
# ╠═bbbd9a62-fe3c-4fb4-896e-aa8ddf60e41e
# ╠═3aa3b7e2-ea21-4a58-aaea-f2fe6cd92145
# ╠═86085648-5acf-4d04-915b-bdf4dc9461bb
# ╠═8af53a0a-47fb-4ba7-8c0d-d8345f072b64
# ╠═4d6390a4-ef84-41f0-9be9-a0bdcf166923
# ╠═8e947d77-0767-4a19-ab34-08ca1c505533
# ╠═46e7d6c2-922e-4f61-8ee7-4c2aa55e33b0
# ╠═e04955fd-c825-443c-8c70-8a8d08116198
# ╠═26fa17ec-69f6-404d-af32-55ed8c840800
# ╠═b46c820b-7de5-409f-bb94-751425e894b7
# ╠═31beb7f0-1cb1-4bb8-90ba-4aeb83ab5e98
