### A Pluto.jl notebook ###
# v0.19.36

using Markdown
using InteractiveUtils

# ╔═╡ ffa7b4c0-a976-11ee-145f-77930c41c10d
md"""
# Loops

This notebook introduces:
1. `while` loops
2. `for` loops
"""

# ╔═╡ 4ffee7dd-f679-4cf0-8c35-8ddbd876e2cb
md"""
## `while` loops

The syntax is
```
while *condition*
	do *operations*
end
```
"""

# ╔═╡ 17b0adbb-310d-4efc-a58f-39331d24e135
n = 0

# ╔═╡ dfa11f99-f868-42ec-8f58-cc9e56de76ac
while n < 10
	n += 1
	println(n)
end

# ╔═╡ d58bc209-e67d-47cf-b666-35b0b7754b6e
my_friends = ["Alice", "Bob", "Claire", "Daniel"]

# ╔═╡ c5bfd6ea-a7c2-4ec4-920c-ee1c8c4a4212
begin
	i = 1
	while i <= length(my_friends)
		friend = my_friends[i]
		println("Hi, $friend !, it's great to see ya!")
		global i += 1
	end
end

# ╔═╡ ef13f35e-c573-41b6-bd45-3e2f11d89106
md"""
## `for` loops

The syntax for a `for` loop is

```
for *var* in *loop iterable*
    *loop body*
end
```

We could use a for loop to generate the same results as either of the examples above:
"""

# ╔═╡ ded8e221-030b-4b63-80ce-f7d82f9aee2c
for n in 1:10
	println(n)
end

# ╔═╡ 1efad3b5-94bc-4820-81dc-ebbf392bfb90
for friend in my_friends
	println("Hi, $friend !, it's great to see ya!")
end

# ╔═╡ 55e39664-1383-42a7-b0e9-d6c7a315e9a5
md"""
Now let's use `for` loops to create some addition tables, where the value of every entry is the sum of its row and column indices.

Note that we iterate over this array via column-major loops in order to get the best performance. More information about fast indexing of multidimensional arrays inside nested loops can be found at https://docs.julialang.org/en/v1/manual/performance-tips/#Access-arrays-in-memory-order,-along-columns-1

First, we initialize an array with zeros.
"""

# ╔═╡ 208d2bb9-f2a6-49cd-97e9-df354a8d5c4d
a, b = 5, 5

# ╔═╡ c8f11d6d-91b7-416e-b5c1-09db5c482642
A = fill(0, (a,b))

# ╔═╡ 6a400fd5-5f59-4c6a-bf6d-55e67a64850f
for j in 1:b
	for i in 1:a
		A[i,j] = i+j
	end
end

# ╔═╡ 97cbeaa2-3e90-4bf5-a22a-cd698f60a3bd
A

# ╔═╡ 78f6de83-8337-4394-8392-32b31e833a09
B = fill(0, (a,b))

# ╔═╡ 1ee233cc-7b21-4b8b-be96-fe3e08d059c2
# syntactic sugar
for j in 1:b, i in 1:a
	B[i,j] = i+j
end

# ╔═╡ 8a71d664-d588-4a9f-9552-2f99997ef6c7
B

# ╔═╡ c9988b84-4976-4b7a-a8de-c4c2b9a3b8b6
# most Julia way
C = [i+j for j in 1:b, i in 1:a]

# ╔═╡ 592e9adb-3e20-48ac-afed-70981b5fa500
md"""
## Exercises

### 4.1

Loop over integers from 1-100 and print their squares
"""

# ╔═╡ baf5a2b3-313e-4617-bea4-88e9b71640bf
for n in 1:100
	println(n^2)
end

# ╔═╡ d7974d25-2703-484e-aa2f-ae090cf33329
md"""
### 4.2

Define a `squares` dictionary for the integers above.
"""

# ╔═╡ f394c484-ca6c-44a1-be6d-8dc8804b3f2e
begin
	squares = Dict{Int, Int}()
	for n in 1:100
		squares[n] = n^2
	end
end

# ╔═╡ 0e7cc77a-70f7-4560-8544-1f68bcec5c87
squares[11]

# ╔═╡ 964a97e8-b1c1-45c6-9816-f1db618ab95f
begin
	@assert squares[10] == 100
	@assert squares[11] == 121
end

# ╔═╡ 4c7a6512-ddee-42fe-a2b1-4601ca615772
md"""
### 4.3

Use an array comprehension to create `square_array` of squares of first 100 positive integers
"""

# ╔═╡ 6fcef59c-3517-469e-a9bc-bf0a0bf069e2
squares_array = [squares[n] for n in 1:100 ]

# ╔═╡ 16f49a28-babd-4746-b0cc-42e537f97c35
begin
	@assert length(squares_array) == 100
	@assert sum(squares_array) == 338350
end

# ╔═╡ Cell order:
# ╠═ffa7b4c0-a976-11ee-145f-77930c41c10d
# ╠═4ffee7dd-f679-4cf0-8c35-8ddbd876e2cb
# ╠═17b0adbb-310d-4efc-a58f-39331d24e135
# ╠═dfa11f99-f868-42ec-8f58-cc9e56de76ac
# ╠═d58bc209-e67d-47cf-b666-35b0b7754b6e
# ╠═c5bfd6ea-a7c2-4ec4-920c-ee1c8c4a4212
# ╠═ef13f35e-c573-41b6-bd45-3e2f11d89106
# ╠═ded8e221-030b-4b63-80ce-f7d82f9aee2c
# ╠═1efad3b5-94bc-4820-81dc-ebbf392bfb90
# ╠═55e39664-1383-42a7-b0e9-d6c7a315e9a5
# ╠═208d2bb9-f2a6-49cd-97e9-df354a8d5c4d
# ╠═c8f11d6d-91b7-416e-b5c1-09db5c482642
# ╠═6a400fd5-5f59-4c6a-bf6d-55e67a64850f
# ╠═97cbeaa2-3e90-4bf5-a22a-cd698f60a3bd
# ╠═78f6de83-8337-4394-8392-32b31e833a09
# ╠═1ee233cc-7b21-4b8b-be96-fe3e08d059c2
# ╠═8a71d664-d588-4a9f-9552-2f99997ef6c7
# ╠═c9988b84-4976-4b7a-a8de-c4c2b9a3b8b6
# ╠═592e9adb-3e20-48ac-afed-70981b5fa500
# ╠═baf5a2b3-313e-4617-bea4-88e9b71640bf
# ╠═d7974d25-2703-484e-aa2f-ae090cf33329
# ╠═f394c484-ca6c-44a1-be6d-8dc8804b3f2e
# ╠═0e7cc77a-70f7-4560-8544-1f68bcec5c87
# ╠═964a97e8-b1c1-45c6-9816-f1db618ab95f
# ╠═4c7a6512-ddee-42fe-a2b1-4601ca615772
# ╠═6fcef59c-3517-469e-a9bc-bf0a0bf069e2
# ╠═16f49a28-babd-4746-b0cc-42e537f97c35
