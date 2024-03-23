### A Pluto.jl notebook ###
# v0.19.40

using Markdown
using InteractiveUtils

# ╔═╡ 169730a0-a730-11ee-156d-331df9e814fd
md"""
# Strings

Topics:
1. How to get a string
2. String interpolation
3. String concatenation
"""

# ╔═╡ a3b4563f-1935-49dc-ad94-e642332057c9
md"""
# Strings

Topics:
1. How to get a string
2. String interpolation
3. String concatenation
"""

# ╔═╡ dafb9dfe-ff69-44d7-a997-4cc452c1c068
md"
## How to get a string

Enclose your characters in \" \" or \"\"\" \"\"\"!
"

# ╔═╡ a4ed9719-f290-4584-ab09-99c9be3aae7d
s1 = "I am a string"

# ╔═╡ db68570f-da20-469a-9cc2-bfe33fac15eb
s2 = """I am another string"""

# ╔═╡ 461e09fb-aee7-4eff-92d8-cdb05695116a
md"""
There are a couple functional differences between strings enclosed in single and triple quotes. <br>
One difference is that, in the latter case, you can use quotation marks within your string.
"""

# ╔═╡ 2682dc38-b531-4f86-98f1-ff6bda02ea24
s3 = """ I am a string-quoting string; "that's what I needed" """

# ╔═╡ 9d2f11c9-88ab-4a05-be80-3f74eadf8be9
md"""
## String interpolation

We can use the $ sign to insert existing variables into a string and to evaluate expressions within a string. <br>
Below is an example that contains some highly sensitive personal information.
"""

# ╔═╡ 2e42b60f-bdab-42bd-bdae-5bee8f7e3937
name = "Fab"

# ╔═╡ 66af0970-fde3-40eb-a79b-11a562b004f4
num_fingers = 10

# ╔═╡ 2f484a32-ced1-4c8e-a400-3e13926fa9cf
num_toes = 10

# ╔═╡ 85a1949a-b027-489d-bfcf-1b35c338b50a
println("I am $name and I have $num_fingers finger on my hands")

# ╔═╡ f9fdb174-5d5d-46ea-8692-52ed239af24b
md"""
## String concatenation

Below are three ways we can concatenate strings! <br><br>
The first way is to use the `string()` function. <br>
`string()` converts non-string inputs to strings.
"""

# ╔═╡ ff524eca-1105-481f-8a91-29d296ba3235
begin
	s4 = "How many cats ";
	s5 = "is too many cats?";
	😺 = 10;
end

# ╔═╡ 478ad0fc-12e3-41fa-9911-d1588a74ae11
string(s4, s5)

# ╔═╡ 15d34f9a-16bd-41fe-82dc-50625efc7df3
string("boh, but ", 😺, " is too few")

# ╔═╡ d90204cd-bc9c-4f0d-af87-e9490ecd7262
# we can also use '*' for concatenation
s4*s5

# ╔═╡ 924c2fc3-20ee-46f4-8c7a-39ca56445960
# we can also use 'join( (el1, el2), join_el)'
join((s4,s5), "..." )

# ╔═╡ ed6900fa-880a-4d7a-a509-1890aa5472bf
md"""
### Exercises

#### 2.1 
Create a string that says "hi" 1000 times, first with `repeat` and then with the exponentiation operator, which can call `*` under the hood. Assign it the variable `hi` below.
"""

# ╔═╡ dad5d4b0-552d-48cd-b5a0-d1551efaccf4
md"""
#### 2.2 
Declare two variables

```julia
a = 3
b = 4
```
and use them to create two strings:
```julia
"3 + 4"
"7" 
```
and store the results in `c` and `d` respectively
"""

# ╔═╡ ab4cb071-eb45-42d3-8ddd-a03107808df7
a = 3

# ╔═╡ 0ec17f90-3480-412a-98e0-3bd94a6cbd20
b = 4

# ╔═╡ 56b9b363-ecc0-49dc-a832-23dc0a42cb30
c = "$a + $b"

# ╔═╡ e2b6c78d-e901-4e48-96dc-b0728150d31c
d = "$(a+b)"

# ╔═╡ 78d2a605-6390-47f3-b2df-f07ff744ecd6
hi = "hi"^1000 # it is like doing 'hi*hi' 1000 times...

# ╔═╡ 939ea130-a992-4ea5-b086-a9008d480334
# ╠═╡ disabled = true
#=╠═╡
hi = repeat("hi", 1000)
  ╠═╡ =#

# ╔═╡ Cell order:
# ╟─169730a0-a730-11ee-156d-331df9e814fd
# ╟─a3b4563f-1935-49dc-ad94-e642332057c9
# ╠═dafb9dfe-ff69-44d7-a997-4cc452c1c068
# ╠═a4ed9719-f290-4584-ab09-99c9be3aae7d
# ╠═db68570f-da20-469a-9cc2-bfe33fac15eb
# ╟─461e09fb-aee7-4eff-92d8-cdb05695116a
# ╟─2682dc38-b531-4f86-98f1-ff6bda02ea24
# ╟─9d2f11c9-88ab-4a05-be80-3f74eadf8be9
# ╠═2e42b60f-bdab-42bd-bdae-5bee8f7e3937
# ╠═66af0970-fde3-40eb-a79b-11a562b004f4
# ╠═2f484a32-ced1-4c8e-a400-3e13926fa9cf
# ╠═85a1949a-b027-489d-bfcf-1b35c338b50a
# ╟─f9fdb174-5d5d-46ea-8692-52ed239af24b
# ╠═ff524eca-1105-481f-8a91-29d296ba3235
# ╠═478ad0fc-12e3-41fa-9911-d1588a74ae11
# ╠═15d34f9a-16bd-41fe-82dc-50625efc7df3
# ╠═d90204cd-bc9c-4f0d-af87-e9490ecd7262
# ╠═924c2fc3-20ee-46f4-8c7a-39ca56445960
# ╟─ed6900fa-880a-4d7a-a509-1890aa5472bf
# ╠═939ea130-a992-4ea5-b086-a9008d480334
# ╠═78d2a605-6390-47f3-b2df-f07ff744ecd6
# ╟─dad5d4b0-552d-48cd-b5a0-d1551efaccf4
# ╠═ab4cb071-eb45-42d3-8ddd-a03107808df7
# ╠═0ec17f90-3480-412a-98e0-3bd94a6cbd20
# ╠═56b9b363-ecc0-49dc-a832-23dc0a42cb30
# ╠═e2b6c78d-e901-4e48-96dc-b0728150d31c
