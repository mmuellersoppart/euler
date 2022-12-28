### A Pluto.jl notebook ###
# v0.19.19

using Markdown
using InteractiveUtils

# ╔═╡ 136eb3b0-86e0-11ed-234c-71d4151e4d92
begin
    import Pkg
    Pkg.activate(mktempdir())
    Pkg.add(url="https://github.com/mmuellersoppart/NaiveMath")
end 

# ╔═╡ 5927efb3-23f1-46e9-816d-14ecfef7643c
begin
	using NaiveMath
	using CairoMakie
end

# ╔═╡ ee445010-9ff5-459d-9975-98b7be1285fa
function hi()
	"hi"
end

# ╔═╡ ebc05e98-7e84-46c6-a538-75e183066696
function prime_factors_data(NN)
	xs = []
	ys = []
	for i in 1:NN
		primefactors = NaiveMath.primefactorization(i)
		if length(primefactors) == 1
			append!(xs, i)
			append!(ys, i)
		else
			primefactors = Set(primefactors)
			for factor in primefactors
				append!(xs, i)
				append!(ys, factor)
			end
		end
	end
	(xs = xs, ys = ys)
end
		

# ╔═╡ dfa7967a-b0ba-4697-bdd9-4f0a7be816d8
NaiveMath.primefactorization(4)

# ╔═╡ a13c7862-3e5d-4f14-9045-0d8fc1e52227
prime_factors_data(100).xs

# ╔═╡ 82ac9c6c-7e35-4ce4-851a-2225dae7116f
begin
	scope = 1:250
	data = prime_factors_data(last(scope))
	points = Point2f.(data.xs, data.ys)
	f = Figure()
	ax = Axis(f[1, 1])
	lines!(ax, scope, scope, color = :orange)
	scatter!(ax, points, markersize = 2)
	f
end

# ╔═╡ ab2a4d70-7836-4f54-bc08-b6b6aedd95ae


# ╔═╡ Cell order:
# ╠═136eb3b0-86e0-11ed-234c-71d4151e4d92
# ╠═5927efb3-23f1-46e9-816d-14ecfef7643c
# ╠═ee445010-9ff5-459d-9975-98b7be1285fa
# ╠═ebc05e98-7e84-46c6-a538-75e183066696
# ╠═dfa7967a-b0ba-4697-bdd9-4f0a7be816d8
# ╠═a13c7862-3e5d-4f14-9045-0d8fc1e52227
# ╠═82ac9c6c-7e35-4ce4-851a-2225dae7116f
# ╠═ab2a4d70-7836-4f54-bc08-b6b6aedd95ae
