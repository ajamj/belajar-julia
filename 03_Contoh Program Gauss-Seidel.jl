### A Pluto.jl notebook ###
# v0.19.46

using Markdown
using InteractiveUtils

# ╔═╡ 25a235f0-74f2-11ef-32e5-75bab0f67376
md"""
# Metode Gauss-Seidel
"""

# ╔═╡ 8e8c05c9-451a-41b7-b11e-331910c18dcc
function gauss_seidel(x1, x2, x3, x4, error_threshold)
    iteration = 0
    a = x1
    b = x2
    c = x3
    d = x4
	error = 100
    
    while error > error_threshold
        a_old, b_old, c_old, d_old = a, b, c, d  # Simpan nilai lama
        
        # Iterasi Gauss-Seidel
        a = (2*b - 3*c - d) / 12
        b = (2*a - 6*c + 3*d) / 15
        c = (20 - a - 6*b + 4*d) / 20
        d = (3*b - 2*c) / 9
        
        # Hitung rata-rata error
        error = (abs(a - a_old) + abs(b - b_old) + abs(c - c_old) + abs(d - d_old)) / 4
        
        iteration += 1
        println("i=$iteration, a=$(round(a, digits=4)), b=$(round(b, digits=4)), c=$(round(c, digits=4)), d=$(round(d, digits=4)), error=$(round(error, digits=4))")
    end
    
    println("Final result after $iteration iterations: a=$(round(a, digits=4)), b=$(round(b, digits=4)), c=$(round(c, digits=4)), d=$(round(d, digits=4))")
end


# ╔═╡ 29f10b40-541a-4754-9b16-4029a0a74cb4
gauss_seidel(1,1,1,1, 0.001)

# ╔═╡ Cell order:
# ╟─25a235f0-74f2-11ef-32e5-75bab0f67376
# ╠═8e8c05c9-451a-41b7-b11e-331910c18dcc
# ╠═29f10b40-541a-4754-9b16-4029a0a74cb4
