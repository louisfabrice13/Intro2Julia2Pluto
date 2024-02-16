### A Pluto.jl notebook ###
# v0.19.36

using Markdown
using InteractiveUtils

# ╔═╡ 816f75c0-a728-11ee-13c5-b1f814f7a613
md"
# Getting started

Topics:
1.  How to print
2. How to assign variables
3. How to comment
4. Syntax for basic math
"

# ╔═╡ 6fe02936-421f-4b25-b944-1d301cfd8ef6
md"
## How to print

The first lesson is about how to print. We'll use the command `println()`
"

# ╔═╡ fb32f3c1-de31-48a8-8e4e-6eeec7dd3f23
begin
	println("I cannot work seamlessly on Julia in JupyterLab")
	println("I am learning Julia on Pluto.jl instead! It was made for this :)")
end

# ╔═╡ 76478dd5-269d-41b5-8772-aba241134270
md"
## How to assign variables

We only need name, equal sign, and value"

# ╔═╡ 24cf914d-65d9-4f58-89ed-9f1a1e10bc9a
myvalue = 42

# ╔═╡ 0008da1e-9905-43c4-86ee-5123184e5c67
typeof(myvalue)

# ╔═╡ a5d954a3-a8f0-4f65-8fc1-a6c20f848a51
begin
	😺 = "smiley cat!"
	typeof(😺)
end

# ╔═╡ e42855ed-6275-464b-a2ae-89c6b3fbd640
md"
## How to comment
"

# ╔═╡ 8b376e76-1de8-4aa8-b00f-d73c6578eefc
# commenting is easy

# ╔═╡ 06d1db34-b810-4000-a0c2-b16bf8c36ec7
#=
Commenting on multiple ligns
is not very hard either
=#

# ╔═╡ af3350ab-889b-4f7e-be3c-96e1a6f3f1f9
md"
## Syntax for basic math
"

# ╔═╡ c2b5dc57-c3eb-4329-85ff-8125d7dbed55
begin
	a = 2
	b = 3
	sum = a + b
	difference = a - b
	product = a * b
	ratio = a / b
	modulus = a % b
	power = a ^ b
	println("a=2, b=3")
	println("sum: ",sum)
	println("difference: ", difference)
	println("product: ", product)
	println("ratio: ", ratio)
	println("modulus: ", modulus)
	println("power: ", power)
	
end

# ╔═╡ 322b39cb-11bb-4bd0-b698-882e1fb4c03a
md"
## Exercises
"

# ╔═╡ ce6ba0a5-cdbe-489b-8dcf-76508c06425b
md"
#### 1.2 
Assign `365` to a variable named `days`. Convert `days` to a float and assign it to variable `days_float`
"

# ╔═╡ 249a9eee-1a1f-460a-bfc9-961e02b9750e
begin
	days = 365
	days_float = convert(Float32, days)
end

# ╔═╡ 48eadcbb-eb86-4a9e-bace-f01d0b48cbf0
begin
	@assert days == 365
	@assert days_float == 365.0
end

# ╔═╡ 89433437-a7e3-41e0-8063-c72c8e78d593
md"""
#### 1.3 
See what happens when you execute

```julia
convert(Int64, "1")
```
and

```julia
parse(Int64, "1")
```

"""

# ╔═╡ 00e34b67-e93f-4d5c-aa7e-3e12110481c6
convert(Int64, "1")

# ╔═╡ 06a36bdb-7b66-48d2-8939-23955b67139e
parse(Int64, "1")

# ╔═╡ Cell order:
# ╟─816f75c0-a728-11ee-13c5-b1f814f7a613
# ╟─6fe02936-421f-4b25-b944-1d301cfd8ef6
# ╠═fb32f3c1-de31-48a8-8e4e-6eeec7dd3f23
# ╟─76478dd5-269d-41b5-8772-aba241134270
# ╠═24cf914d-65d9-4f58-89ed-9f1a1e10bc9a
# ╠═0008da1e-9905-43c4-86ee-5123184e5c67
# ╠═a5d954a3-a8f0-4f65-8fc1-a6c20f848a51
# ╟─e42855ed-6275-464b-a2ae-89c6b3fbd640
# ╠═8b376e76-1de8-4aa8-b00f-d73c6578eefc
# ╠═06d1db34-b810-4000-a0c2-b16bf8c36ec7
# ╟─af3350ab-889b-4f7e-be3c-96e1a6f3f1f9
# ╠═c2b5dc57-c3eb-4329-85ff-8125d7dbed55
# ╟─322b39cb-11bb-4bd0-b698-882e1fb4c03a
# ╟─ce6ba0a5-cdbe-489b-8dcf-76508c06425b
# ╠═249a9eee-1a1f-460a-bfc9-961e02b9750e
# ╠═48eadcbb-eb86-4a9e-bace-f01d0b48cbf0
# ╟─89433437-a7e3-41e0-8063-c72c8e78d593
# ╠═00e34b67-e93f-4d5c-aa7e-3e12110481c6
# ╠═06a36bdb-7b66-48d2-8939-23955b67139e
