### A Pluto.jl notebook ###
# v0.19.36

using Markdown
using InteractiveUtils

# ╔═╡ 3e673930-a989-11ee-0f2e-41e399d491bf
md"""
# Functions

This notebook introduces:

1. How to declare a function
2. Duck-typing in Julia
3. Mutating vs Non-mutating functions
4. Higher order functions

"""

# ╔═╡ e1e1f5f3-fa28-4b07-a0ed-00cc8e401e8d
md"""
## How to declare a function
"""

# ╔═╡ fd8b1cc3-1c13-443d-a5cc-6b69c30868ca
function greet_them(name)
	println("Hi $name !")
end

# ╔═╡ f93a8249-7e6e-4450-af80-d1c83e2652bb
greet_them("Matilde")

# ╔═╡ 7c8894c0-9c84-4360-82fb-8d94c7b3db7a
greet_them_v2(name) = println("Hi $name !")

# ╔═╡ 26158dcb-d40e-4313-81a1-042b37b6c8ff
greet_them_v2("Mati")

# ╔═╡ b6513b8b-60f9-4d1a-9e47-bfca973b8f6c
greet_them_v3 = name -> println("Hi $name")

# ╔═╡ 558433d1-9423-439d-88fd-b959bd5735c1
greet_them_v3("Tabby")

# ╔═╡ 9270f4ee-7264-4c2e-a37f-8bf17e1d1ecf
md"""
The latest version is the anonymous function.
"""

# ╔═╡ 86fdba99-2b2c-449e-86c5-53a53b430999
md"""
## Duck-typing

If it looks like a duck, and it quacks like a duck, it's a duck.
Julia functions process inputs as long as it makes sense.
"""

# ╔═╡ 95af92c1-e67a-45cc-a15e-d78779a64bc9
greet_them(13) # works with an int!

# ╔═╡ 0eda9d4a-8dca-45ef-b361-c7e28c3252a3
f = n -> n^2

# ╔═╡ 9f4577f3-9fbb-4d44-8e76-404ff44bb1e5
f(3)

# ╔═╡ 89354d0c-0528-48ae-8970-69f19ec070a6
A = rand(2,2)

# ╔═╡ 5c0e48e0-9536-464c-8844-efdc53699c3e


# ╔═╡ 1a3d861b-6414-42d3-af87-f2579711c8f2
f(A)

# ╔═╡ 9d9d3a87-3dd4-4562-b6c8-0c64de55161a
g(n) = n * 3

# ╔═╡ 3bdc8dd5-d35c-4e78-bd03-f884eb4c759b
g(4)

# ╔═╡ 6ae9062a-9374-4154-8779-15ec1a1c2252
f("Hi Matilde") # string^2 is string*string, string*string is concatenation

# ╔═╡ c9d5cab3-51f2-4a74-ba5a-0e2fcc85da28
v = rand(3)

# ╔═╡ cc7e9345-25ef-420a-9bd4-95823622535f
f(v) 
#=
does not work, because powers are not univocally defined for vectors as they are for matrices
=#

# ╔═╡ 0d05979e-6d63-4390-9c32-6020b45dcdd5
g(v)

# ╔═╡ 1b44862d-2a61-4759-b089-0ec111fbdef3
md"""
## Mutating vs Non-mutating functions

By convention `function!` changes the object it processes, see the difference with `sort!` and `sort`.
"""

# ╔═╡ 742f75db-f909-4523-9a41-b73a293b7027
w = [1,2,5,6,4]

# ╔═╡ d148d2c0-1d8b-48d0-a898-bb1094e7eace
sort(w)

# ╔═╡ c03d5cf2-084d-4cb8-850f-2c8b4938a677
w

# ╔═╡ f1329b04-1e87-405d-b506-d498eab8dd5a
m = copy(w)

# ╔═╡ d8483c4b-3b45-4860-b72f-5620e899d13e
sort!(m)

# ╔═╡ 48b17f2c-b0e5-4438-8a2c-83aec20309a8
m

# ╔═╡ 708ac21f-38ec-4ab4-821e-e16b0c798451
md"""
Functional Programming privileges the use of functions that never mutate their inputs:
local variables may be instantiated and output to the global scope, but the global scopes must be uncorrupted.
Object-Oriented Programming privileges classes that may have many instances and mutable instances that persist in their class structure.
The latter may seem more intuitive, but it is also considered harder to debug.
Julia is flexible but is not properly OOP (no methods inside classes).
"""

# ╔═╡ f313feb4-5d55-4bc8-8b17-d063f7f2d627
md"""
## Higher-order functions

Some functions take functions among their inputs.
One such examples is `map`
"""

# ╔═╡ a6d71564-f33e-4820-bc9b-ac8d4dfd396a
md"""
### `map`
"""

# ╔═╡ 1256d455-0546-44de-aeff-e7746ddd8eb4
map(f, [1,2,3])

# ╔═╡ d3f823bf-223b-471e-a9b6-3af9f2a2eb2e
[f(1), f(2), f(3)]

# ╔═╡ 3a014224-04ce-4b0f-811a-6063bb16d98c
md"""
`map` takes a function and applies it to its second argument, returning the respective outputs
"""

# ╔═╡ 552684c1-1f2f-4ec7-bc03-04de9b1ab004
md"""
Anonymous functions are indeed useful with `map` and higher-order functions.
"""

# ╔═╡ a7d0c665-2e82-41ab-9a6f-e6acad06b975
map(x->x^3, [1,2,4,5])

# ╔═╡ c6fc3da5-281f-423c-8bcb-c895faada350
md"""
### `broadcast`

`broadcast` generalizes `map`, thus can do the same things and more. It has the same syntax.
"""

# ╔═╡ 17d26514-9184-482b-9a72-292b29ad2c6d
broadcast(f, [1,2,3])

# ╔═╡ 4b350c2c-f080-4865-a28d-3aa8b7d22d78
f.([1,2,3])
#=
`function . input` is a Julia way to broadcast, again so-called syntactic sugar
=#

# ╔═╡ 84c8824a-7f41-49d9-8137-b9ac2c9955fb
f(A) # squaring a matrix, A * A'

# ╔═╡ 5e93a633-5667-4153-b1af-3a695da762f5
f.(A) # squaring each element of a matrix

# ╔═╡ ab290689-c142-4c2a-90a2-1d30cd4adfc7
A .+ 2 .* f.(A) ./ A # choose your fighter (notation)

# ╔═╡ f215f1cb-999b-45e9-9690-416b5c5f9e0f
broadcast(x -> x + 2 * f(x) / x, A) # choose your fighter (notation)

# ╔═╡ 69656a8f-3dc5-432e-9e1f-e8654ff0ed63
md"""
## Exercises

### 6.1

Write the function `add_one` that adds 1 to its input.
"""

# ╔═╡ 011f0f90-f577-4828-aa84-e7be7cbca220
function add_one(addendum)
	result = addendum + 1
end

# ╔═╡ 04b9f7dd-1663-49ce-b4ea-01bb317fd55b
add_one(13)

# ╔═╡ 05987a60-837f-46ff-b7e2-db3e0c5fbecf
md"""
### 6.2 

Use `map` or `broadcast` to increment by 1 every element of function A
"""

# ╔═╡ 73a247c5-c152-478c-af82-61cc92940c78
A .+ 1

# ╔═╡ 032e6811-3b1f-43a4-b790-abd834f83127
md"""
### 6.3

Repeat with `add_one` and broadcasting. Assign incremented A to A2
"""

# ╔═╡ ec1f7c3e-6424-4930-8270-17d49d706d54
A2 = broadcast(add_one, A)

# ╔═╡ Cell order:
# ╠═3e673930-a989-11ee-0f2e-41e399d491bf
# ╠═e1e1f5f3-fa28-4b07-a0ed-00cc8e401e8d
# ╠═fd8b1cc3-1c13-443d-a5cc-6b69c30868ca
# ╠═f93a8249-7e6e-4450-af80-d1c83e2652bb
# ╠═7c8894c0-9c84-4360-82fb-8d94c7b3db7a
# ╠═26158dcb-d40e-4313-81a1-042b37b6c8ff
# ╠═b6513b8b-60f9-4d1a-9e47-bfca973b8f6c
# ╠═558433d1-9423-439d-88fd-b959bd5735c1
# ╠═9270f4ee-7264-4c2e-a37f-8bf17e1d1ecf
# ╠═86fdba99-2b2c-449e-86c5-53a53b430999
# ╠═95af92c1-e67a-45cc-a15e-d78779a64bc9
# ╠═0eda9d4a-8dca-45ef-b361-c7e28c3252a3
# ╠═9f4577f3-9fbb-4d44-8e76-404ff44bb1e5
# ╠═89354d0c-0528-48ae-8970-69f19ec070a6
# ╠═5c0e48e0-9536-464c-8844-efdc53699c3e
# ╠═1a3d861b-6414-42d3-af87-f2579711c8f2
# ╠═9d9d3a87-3dd4-4562-b6c8-0c64de55161a
# ╠═3bdc8dd5-d35c-4e78-bd03-f884eb4c759b
# ╠═6ae9062a-9374-4154-8779-15ec1a1c2252
# ╠═c9d5cab3-51f2-4a74-ba5a-0e2fcc85da28
# ╠═cc7e9345-25ef-420a-9bd4-95823622535f
# ╠═0d05979e-6d63-4390-9c32-6020b45dcdd5
# ╠═1b44862d-2a61-4759-b089-0ec111fbdef3
# ╠═742f75db-f909-4523-9a41-b73a293b7027
# ╠═d148d2c0-1d8b-48d0-a898-bb1094e7eace
# ╠═c03d5cf2-084d-4cb8-850f-2c8b4938a677
# ╠═f1329b04-1e87-405d-b506-d498eab8dd5a
# ╠═d8483c4b-3b45-4860-b72f-5620e899d13e
# ╠═48b17f2c-b0e5-4438-8a2c-83aec20309a8
# ╠═708ac21f-38ec-4ab4-821e-e16b0c798451
# ╠═f313feb4-5d55-4bc8-8b17-d063f7f2d627
# ╠═a6d71564-f33e-4820-bc9b-ac8d4dfd396a
# ╠═1256d455-0546-44de-aeff-e7746ddd8eb4
# ╠═d3f823bf-223b-471e-a9b6-3af9f2a2eb2e
# ╠═3a014224-04ce-4b0f-811a-6063bb16d98c
# ╠═552684c1-1f2f-4ec7-bc03-04de9b1ab004
# ╠═a7d0c665-2e82-41ab-9a6f-e6acad06b975
# ╠═c6fc3da5-281f-423c-8bcb-c895faada350
# ╠═17d26514-9184-482b-9a72-292b29ad2c6d
# ╠═4b350c2c-f080-4865-a28d-3aa8b7d22d78
# ╠═84c8824a-7f41-49d9-8137-b9ac2c9955fb
# ╠═5e93a633-5667-4153-b1af-3a695da762f5
# ╠═ab290689-c142-4c2a-90a2-1d30cd4adfc7
# ╠═f215f1cb-999b-45e9-9690-416b5c5f9e0f
# ╠═69656a8f-3dc5-432e-9e1f-e8654ff0ed63
# ╠═011f0f90-f577-4828-aa84-e7be7cbca220
# ╠═04b9f7dd-1663-49ce-b4ea-01bb317fd55b
# ╠═05987a60-837f-46ff-b7e2-db3e0c5fbecf
# ╠═73a247c5-c152-478c-af82-61cc92940c78
# ╠═032e6811-3b1f-43a4-b790-abd834f83127
# ╠═ec1f7c3e-6424-4930-8270-17d49d706d54
