### A Pluto.jl notebook ###
# v0.19.40

using Markdown
using InteractiveUtils

# ╔═╡ 5e87af60-a95c-11ee-3f4c-9d1a78ca9d88
md"""
# Data Structures

This notebook introduces data structures, to collect data in "things" more complicated than variables.
The structures introduced are
1. Tuples
2. Dictionaries
3. Arrays

Tuples and Arrays are both indexed, ordered. Arrays and Dictionaries are both mutable.
"""

# ╔═╡ 1ea4c5b5-ca14-48c7-89ec-e18842179876
md"""
## Tuples

We create tuples enclosing values into `()`, as in `(item1, item2, ...)`
"""

# ╔═╡ df3125a9-820e-4378-988f-b7ff2407dd76
my_fav_animals = ("dolphins", "wolves", "dogs")

# ╔═╡ bd3a21ba-31d2-4851-9304-579b3b46dba7
my_fav_animals[1]

# ╔═╡ 5af96442-4c47-483d-a6a2-55442d8d516b
md"""
we can't update the values, though
"""

# ╔═╡ d1450b71-71c8-47f4-912a-d3ae1853a122
my_fav_animals[1] = "whales"

# ╔═╡ 2a4d1185-1a45-4972-a854-f426f94af063
md"""
`NamedTupled` are what you'd expect.
"""

# ╔═╡ 7aa5479d-280b-4c3c-8423-1ca32c8aef94
my_fav_mammals = (carnivore = "wolves", herbivore = "cows", omnivores = "bears")

# ╔═╡ bdcae058-a10b-4deb-b96c-925bba431d20
my_fav_mammals.herbivore

# ╔═╡ 61286eb4-92e8-46f5-ac34-27ea1499f708
md"""
## Dictionaries

Dictionaries are key-value stores, that we instantiate with the `Dict()` function.
They are not ordered like named tuples, but they are mutable.
"""

# ╔═╡ ed3ecd0b-da2c-4485-9b2c-fa557daeca5f
my_phone_book = Dict("Mati"=>"00-0001", "Mom"=>"00-0002")

# ╔═╡ 2e0c103a-4686-4161-9d33-cc436c655d8a
my_phone_book["Mom"]

# ╔═╡ 325ce24f-c433-4264-9436-1b93a7098c03
my_phone_book["Dad"] = "00-0003"

# ╔═╡ b5116b7e-a2e9-4292-a567-82f9af83dcb9
my_phone_book

# ╔═╡ ac77ff99-ffe0-4f65-a11b-10e870fcb714
md"""
The `pop!` extracts the value of the key that will be eliminated from the Dictionary
"""

# ╔═╡ 64e282ac-0afa-4d55-8999-65e640d1aee1
pop!(my_phone_book, "Mom")

# ╔═╡ 6713389e-dd10-4547-bea4-29d6eadf49e3
my_phone_book

# ╔═╡ 1105e686-7d77-4be0-8bfc-8f06f26e3fd7
md"""
## Arrays

Arrays are very flexible ordered and mutable collections of values, defined by the syntax `[item1, item2, ...]` with different possible types and dimensions, e.g. `Array{String, 2}`
"""

# ╔═╡ dae74ae7-8946-4f6d-91f1-b5c51013832e
my_friends = ["Mary", "Tomàs", "Margherita"]

# ╔═╡ ce3d0e69-e01e-4525-9fd0-9bec0d195adf
my_friends[3]

# ╔═╡ c7422db4-f43e-4159-9338-b1328911f8f6
my_friends[3] = "Puya"

# ╔═╡ 5619e996-e0cb-4e46-9c10-a39f4da2bc05
typeof(my_friends)

# ╔═╡ fb922c08-5490-4a81-8b99-69215523331e
mixtype_array = [1,2,"three"]

# ╔═╡ 8fadc008-da95-4f0f-a220-480e76b9be8c
md"""
`push!` and `pop!` work on arrays too
"""

# ╔═╡ 7c5adb83-87a8-47df-bfab-7b9dffb02f4a
begin
	pop!(mixtype_array)
	push!(mixtype_array, 3)
	mixtype_array
end

# ╔═╡ 4508c996-e7a7-4d2d-a299-810dfdb2ada1
md"""
Arrays can be multidimensional and collect inner arrays...
"""

# ╔═╡ 6d8f9931-2b5c-450c-977f-61e56abd9729
favorites = [["egg", "cheese", "persimmon"], ["red", "black", "white"]]

# ╔═╡ 130daad0-d358-4e45-8a43-52e84a3acd5f
numbers = [[0,1], [2,3,4], [5,6]]

# ╔═╡ 83bb2a48-9bbe-45ac-8226-ce7fb8e84868
rand(4,3)

# ╔═╡ 0fb77087-e190-4952-a5cc-0f380f157f69
rand(2,2,2)

# ╔═╡ 41dcfe07-8ea7-4f0a-bdfe-ba775c2a08c7
begin
	numbers_new = [1,2,3,4,5]
	numbers_copy = numbers_new
	numbers_copy[1] = 404
	numbers_new
end

# ╔═╡ a8b8d048-c279-4ead-a2e0-30d99826a913
md"""
When you "copy" an array simply assigning it as a value to another array, you are actually giving different names to the same variable, a new way to access those values.
"""

# ╔═╡ 4289ea91-496b-4d4c-8583-2939af0d1875
numbers_new[1] = 1

# ╔═╡ 22a2c02f-9d75-4256-bd8b-7dd25fad9e79
numbers_good_copy = copy(numbers_new)

# ╔═╡ 5ce8c3d0-73a0-4e2a-850e-5b2825974b34
numbers_good_copy[1] = 404

# ╔═╡ 55385179-39c9-4465-9dba-50976715778f
numbers_new

# ╔═╡ 8ca3efd9-a9fc-44c7-902c-d2f5bb69501b
numbers_good_copy

# ╔═╡ 4fecdac3-3fb5-4d4c-92b3-89c8f0f78032
md"""
### Exercises

#### 3.1 
Create an array, `a_ray`, with the following code:

```
a_ray = [1, 2, 3]
```

Add the number `4` to the end of this array and then remove it.
"""

# ╔═╡ b559b541-0073-4817-ac65-ff9a4e129376
a_ray = [1,2,3]

# ╔═╡ a9400bd8-afba-4bb8-b3e5-40b4dc2200a4
push!(a_ray, 4)

# ╔═╡ 29c63fc2-69c5-4f44-a158-e701c1e4f286
pop!(a_ray)

# ╔═╡ 96d65925-41d3-4b71-b3d2-1c1de3c9b631
a_ray

# ╔═╡ c67b8343-77f1-4720-9678-12a1a974f341
md"""
#### 3.2 
Try to add "Emergency" as key to `my_phone_book` with the value `string(911)` with the following code
```
my_phone_book["Emergency"] = 911
```

Why doesn't this work?
"""

# ╔═╡ c4cb7506-c9b3-4541-afb7-f6c69eb343cf
my_phone_book["Emergency"] = 911
# This cannot work since the Dictionary is expecting strings as values
# Here 911 is still an Int

# ╔═╡ 498483a2-c263-4af1-a2a1-f9ce0e4d1206
my_phone_book["Emergency"] = string(911)

# ╔═╡ fbd66ff6-b1ac-4eba-ae38-c3940f7039ff
md"""
3.3-5

How to handle flexibility? Check Julia documentation
"""

# ╔═╡ f4b692ee-a83d-41fa-a8b3-13fff9244c75
flexible_phone_book = Dict("Julia"=>1234, "Python"=>"999")

# ╔═╡ 912cb01b-2758-4165-a583-28f2477719b3
begin
	my_phone_book_flex = Dict{String, Any}("Mati"=>"00-0001", "Dad"=>"00-0003")
	my_phone_book_flex["Emergency"] = 911
	my_phone_book_flex
end

# ╔═╡ Cell order:
# ╟─5e87af60-a95c-11ee-3f4c-9d1a78ca9d88
# ╟─1ea4c5b5-ca14-48c7-89ec-e18842179876
# ╠═df3125a9-820e-4378-988f-b7ff2407dd76
# ╠═bd3a21ba-31d2-4851-9304-579b3b46dba7
# ╠═5af96442-4c47-483d-a6a2-55442d8d516b
# ╠═d1450b71-71c8-47f4-912a-d3ae1853a122
# ╠═2a4d1185-1a45-4972-a854-f426f94af063
# ╠═7aa5479d-280b-4c3c-8423-1ca32c8aef94
# ╠═bdcae058-a10b-4deb-b96c-925bba431d20
# ╟─61286eb4-92e8-46f5-ac34-27ea1499f708
# ╠═ed3ecd0b-da2c-4485-9b2c-fa557daeca5f
# ╠═2e0c103a-4686-4161-9d33-cc436c655d8a
# ╠═325ce24f-c433-4264-9436-1b93a7098c03
# ╠═b5116b7e-a2e9-4292-a567-82f9af83dcb9
# ╟─ac77ff99-ffe0-4f65-a11b-10e870fcb714
# ╠═64e282ac-0afa-4d55-8999-65e640d1aee1
# ╠═6713389e-dd10-4547-bea4-29d6eadf49e3
# ╟─1105e686-7d77-4be0-8bfc-8f06f26e3fd7
# ╠═dae74ae7-8946-4f6d-91f1-b5c51013832e
# ╠═ce3d0e69-e01e-4525-9fd0-9bec0d195adf
# ╠═c7422db4-f43e-4159-9338-b1328911f8f6
# ╠═5619e996-e0cb-4e46-9c10-a39f4da2bc05
# ╠═fb922c08-5490-4a81-8b99-69215523331e
# ╟─8fadc008-da95-4f0f-a220-480e76b9be8c
# ╠═7c5adb83-87a8-47df-bfab-7b9dffb02f4a
# ╟─4508c996-e7a7-4d2d-a299-810dfdb2ada1
# ╠═6d8f9931-2b5c-450c-977f-61e56abd9729
# ╠═130daad0-d358-4e45-8a43-52e84a3acd5f
# ╠═83bb2a48-9bbe-45ac-8226-ce7fb8e84868
# ╠═0fb77087-e190-4952-a5cc-0f380f157f69
# ╠═41dcfe07-8ea7-4f0a-bdfe-ba775c2a08c7
# ╟─a8b8d048-c279-4ead-a2e0-30d99826a913
# ╠═4289ea91-496b-4d4c-8583-2939af0d1875
# ╠═22a2c02f-9d75-4256-bd8b-7dd25fad9e79
# ╠═5ce8c3d0-73a0-4e2a-850e-5b2825974b34
# ╠═55385179-39c9-4465-9dba-50976715778f
# ╠═8ca3efd9-a9fc-44c7-902c-d2f5bb69501b
# ╟─4fecdac3-3fb5-4d4c-92b3-89c8f0f78032
# ╠═b559b541-0073-4817-ac65-ff9a4e129376
# ╠═a9400bd8-afba-4bb8-b3e5-40b4dc2200a4
# ╠═29c63fc2-69c5-4f44-a158-e701c1e4f286
# ╠═96d65925-41d3-4b71-b3d2-1c1de3c9b631
# ╟─c67b8343-77f1-4720-9678-12a1a974f341
# ╠═c4cb7506-c9b3-4541-afb7-f6c69eb343cf
# ╠═498483a2-c263-4af1-a2a1-f9ce0e4d1206
# ╟─fbd66ff6-b1ac-4eba-ae38-c3940f7039ff
# ╠═f4b692ee-a83d-41fa-a8b3-13fff9244c75
# ╠═912cb01b-2758-4165-a583-28f2477719b3
