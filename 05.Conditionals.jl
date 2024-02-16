### A Pluto.jl notebook ###
# v0.19.36

using Markdown
using InteractiveUtils

# ╔═╡ 415f0850-a97c-11ee-13ca-51ddb2ce1c25
md"""
# Conditionals

## With `if` statements

In Julia, the syntax

```
if *condition 1*
    *option 1*
elseif *condition 2*
    *option 2*
else
    *option 3*
end
```

allows us to conditionally evaluate one of our options.
For example, we might want to implement the FizzBuzz test: given a number, N, print "Fizz" if N is divisible by 3, "Buzz" if N is divisible by 5, and "FizzBuzz" if N is divisible by 3 and 5. Otherwise just print the number itself! Enter your choice for `N` here:
"""

# ╔═╡ b60fc61f-c278-424c-9757-deb96a46ff09
md"""
## Ternary operators

The form `a ? b : c` equates to
```
if a
	b
else
	c
```
"""

# ╔═╡ 0574515a-895b-4276-a5ac-c83abed64883
x = 10

# ╔═╡ 25ec1024-dcc1-4fa5-8421-ff35703d60b0
y = 30

# ╔═╡ 1e2fb8eb-3b97-4549-a76c-3aa871372553
md"""
To print the largest number we could use the conditional statements
"""

# ╔═╡ e61dedda-7a77-44bb-be8f-a2769a8cce13
if x > y
	println(x)
else
	println(y)
end

# ╔═╡ 5cd5f8cb-5ea8-4fea-b5ab-c82165aaa8cc
md"""
But using the ternary operator we can write
"""

# ╔═╡ e963c30e-b1c0-4ecd-b02a-4081eeae825c
x > y ? x : y

# ╔═╡ 0afbf6b4-aa46-46c9-932a-470c285a42f3
md"""
## Short-circuit evaluation

In `a && b`, the `a` condition is like a switch, if false Julia doesn't even evaluate `b`, otherwise it returns `b` whether it's true or false and stands correct (even if itself the expression returns an error!).
Ideally, put the more complex expression as `b`.
"""

# ╔═╡ 9b9c76f0-42d7-45f5-a27f-3ab378ffb8b1
false && (println("hi"); true)

# ╔═╡ 0bc5387b-960c-4236-a26f-c4f8fe345251
true && (println("hi"); true)

# ╔═╡ 6328d2eb-983e-4cca-b5ec-fa949deb46a0
1>0 && error("there was an error!")

# ╔═╡ 7dd7afbf-416c-42ff-8274-a72073d9e84c
md"""
Even the `||` operator uses short-circuit, because the the expression `a || b` has the same value of the first true condition, or of `b` when `a` is false
"""

# ╔═╡ 91b96513-e714-44c2-8d8e-aa62653238c8
md"""
## Exercises

### 5.1

Write conditionals so that if N is even it is printed, and if it is odd the string "odd" is printed instead.
"""

# ╔═╡ 289d715a-574b-4add-b754-28872511a5cc
if N % 3 == 0 && N % 5 == 0
	println("FizzBuzz")
elseif N % 3 == 0
	println("Fizz")
elseif N % 5 == 0
	println("Buzz")
else
	println(N)
end

# ╔═╡ 6747fa3a-c0ef-45c3-987c-03df6aa243af
if N % 2 == 0
	println(N)
else
	println("odd")
end

# ╔═╡ 91791166-e12c-4e37-b847-9a0867d4bb4d
md"""
### 5.2

Resolve ex. 5.1 with ternary operator.
"""

# ╔═╡ 9561312e-f8d2-4bae-a14b-b744a5095b79
N % 2 == 0 ? println(N) : println("odd")

# ╔═╡ d61283c6-e4a2-4cc0-8d1e-904b5e98b77e


# ╔═╡ da8d61f7-b361-4009-8f5d-a003112f9490
# ╠═╡ disabled = true
#=╠═╡
N = 247
  ╠═╡ =#

# ╔═╡ 16c8fbf9-8c6e-48aa-9423-55abdec67433
N = 346

# ╔═╡ Cell order:
# ╟─415f0850-a97c-11ee-13ca-51ddb2ce1c25
# ╠═da8d61f7-b361-4009-8f5d-a003112f9490
# ╠═289d715a-574b-4add-b754-28872511a5cc
# ╟─b60fc61f-c278-424c-9757-deb96a46ff09
# ╠═0574515a-895b-4276-a5ac-c83abed64883
# ╠═25ec1024-dcc1-4fa5-8421-ff35703d60b0
# ╠═1e2fb8eb-3b97-4549-a76c-3aa871372553
# ╠═e61dedda-7a77-44bb-be8f-a2769a8cce13
# ╠═5cd5f8cb-5ea8-4fea-b5ab-c82165aaa8cc
# ╠═e963c30e-b1c0-4ecd-b02a-4081eeae825c
# ╠═0afbf6b4-aa46-46c9-932a-470c285a42f3
# ╠═9b9c76f0-42d7-45f5-a27f-3ab378ffb8b1
# ╠═0bc5387b-960c-4236-a26f-c4f8fe345251
# ╠═6328d2eb-983e-4cca-b5ec-fa949deb46a0
# ╟─7dd7afbf-416c-42ff-8274-a72073d9e84c
# ╠═91b96513-e714-44c2-8d8e-aa62653238c8
# ╠═16c8fbf9-8c6e-48aa-9423-55abdec67433
# ╠═6747fa3a-c0ef-45c3-987c-03df6aa243af
# ╠═91791166-e12c-4e37-b847-9a0867d4bb4d
# ╠═9561312e-f8d2-4bae-a14b-b744a5095b79
# ╠═d61283c6-e4a2-4cc0-8d1e-904b5e98b77e
