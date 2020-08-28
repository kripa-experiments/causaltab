### A Pluto.jl notebook ###
# v0.11.4

using Markdown
using InteractiveUtils

# ╔═╡ 57abe58c-e897-11ea-2806-33ea69204c99
md"""# Experimentation with multilevel intelligent tables
"""

# ╔═╡ 272d908e-e899-11ea-3fa0-035efee04065
md""" What if a cell is implemented as an object that is an instance of an heirarchical class structure with an inherited notion of value. 

When an object's value is accessed for rendering, per the accessing client, the response reflects the class heirarchy:
1. CONSTANT: Starting from an entered value, 
2. CALCULATION: A calculated value, 
3. DISTRIBUTION: A value sampled from a prior distribution

In practical terms, if an entered value is unavailable, the calculation is accessed, failing which a sample from the prior is used, and so on."""

# ╔═╡ b937fb56-e897-11ea-3855-8d3facef5038
md"""## Cell #1
"""

# ╔═╡ d541fd92-e897-11ea-258b-b3c8b3f09d62
md"""## Cell #2
"""

# ╔═╡ dd09d7d4-e897-11ea-1088-217bcf66639f
md"""## Cell #3
"""

# ╔═╡ 6a9552ac-e897-11ea-21b5-4b27d1faacbe
using PlutoUI, Random

# ╔═╡ 96efdea6-e89e-11ea-1d03-ddb47316b341
function access_cell(c)
	return isnothing(c[1]) ? 
				(isnothing(c[2]) ? 
					c[3] : 
				c[2]) : 
			c[1]
end

# ╔═╡ 38f10e34-e898-11ea-0b2d-772ab12e1d67
c1 = [0.5,nothing,round(rand(),digits=1)]

# ╔═╡ 28180f0c-e89f-11ea-12c2-df5eaaa1046c
accessed_c1 = access_cell(c1)

# ╔═╡ dbd67dca-e897-11ea-105a-ddd2dcb4b8fe
c2 = [0.2,nothing,round(rand(),digits=1)]

# ╔═╡ cf0b45e0-e898-11ea-082b-8b51a5f60299
accessed_c2 = access_cell(c2)

# ╔═╡ e25c23a2-e897-11ea-366f-013c58886d25
c3 = [0.6,accessed_c1+accessed_c2,2*round(rand(),digits=1)]

# ╔═╡ e1fc59b0-e897-11ea-1b33-7fdd98bfcd47
accessed_c3 = access_cell(c3)

# ╔═╡ Cell order:
# ╟─6a9552ac-e897-11ea-21b5-4b27d1faacbe
# ╟─57abe58c-e897-11ea-2806-33ea69204c99
# ╟─272d908e-e899-11ea-3fa0-035efee04065
# ╠═96efdea6-e89e-11ea-1d03-ddb47316b341
# ╟─b937fb56-e897-11ea-3855-8d3facef5038
# ╠═38f10e34-e898-11ea-0b2d-772ab12e1d67
# ╟─28180f0c-e89f-11ea-12c2-df5eaaa1046c
# ╟─d541fd92-e897-11ea-258b-b3c8b3f09d62
# ╠═dbd67dca-e897-11ea-105a-ddd2dcb4b8fe
# ╟─cf0b45e0-e898-11ea-082b-8b51a5f60299
# ╟─dd09d7d4-e897-11ea-1088-217bcf66639f
# ╠═e25c23a2-e897-11ea-366f-013c58886d25
# ╟─e1fc59b0-e897-11ea-1b33-7fdd98bfcd47
