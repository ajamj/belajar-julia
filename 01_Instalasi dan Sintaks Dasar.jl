### A Pluto.jl notebook ###
# v0.19.46

using Markdown
using InteractiveUtils

# ╔═╡ 9786fd40-71aa-11ef-23ba-5110b3852151
md"""
# 01. Instalasi dan Sintaks Dasar
[https://ajamj.github.io/belajar-julia](https://ajamj.github.io/belajar-julia)

"""

# ╔═╡ cdcd9e28-66ad-48d3-9ae0-df1e5d284e7f
md"""
## Instalasi Julia
Untuk Windows, bisa dengan buka powershell atau command prompt, lalu ketik:
```
winget install julia -s msstore
```
Untuk OS selain Windows, silakan buka situs resmi Julia di [https://julialang.org/downloads/](https://julialang.org/downloads/)

## Getting Started with Julia
* Sumber utama untuk mempelajari Julia adalah dari dokumentasi yang disediakan oleh Julia di [https://docs.julialang.org/](https://docs.julialang.org/). 
* Beberapa sumber untuk mempelajari bahasa pemrograman Julia bisa dilihat di [https://julialang.org/learning/](https://julialang.org/learning/).
* Dalam Julia, terdapat **package** yang merupakan kumpulan kode yang dibundel bersama untuk menyediakan fungsionalitas tertentu, seperti fungsi, tipe data, dan modul yang dapat digunakan kembali dalam berbagai proyek. Berbagai package dalam Julia dapat dilihat di laman [https://juliapackages.com/](https://juliapackages.com/).
* Package **Pluto** juga dapat digunakan sebagai media pengajaran secara interaktif. Contoh penggunaannya dapat dilihat pada modul mata kuliah **Introduction to Computational Thinking** dari **MIT** di alamat [https://computationalthinking.mit.edu/](https://computationalthinking.mit.edu/).
"""

# ╔═╡ 5aa727c1-9c45-42d1-8061-44999877824e
md"""
## Executable File VS Notebook
Dalam menuliskan kode bahasa pemrograman Julia, kita bisa menuliskannya dalam bentuk executable ataupun notebook. Perbedaannya:

**1. Executable File (.jl)**
+ Tujuan: Menjalankan program secara keseluruhan, biasanya untuk aplikasi yang siap digunakan.
+ Penggunaan: Melalui terminal/command line. Cocok untuk otomatisasi dan distribusi.
+ Kelebihan: Cepat dan efisien.
+ Kekurangan: Kurang interaktif.

**2. Notebook**
+ Tujuan: Eksplorasi interaktif, analisis data, dan eksperimen kode secara bertahap.
+ Jenis Notebook
  + **Jupyter Notebook (.ipynb)**: Menggunakan Jupyter untuk eksekusi sel kode dan integrasi teks, gambar, atau grafik. Dapat dibuka di VS Code.
  + **Pluto Notebook (.jl)**: Lebih ringan, reaktif, otomatis menjalankan ulang sel terkait saat kode berubah. Dapat dibuka di browser seperti Google Chrome, Firefox, Safari, dll.
+ Kelebihan: Interaktif, cocok untuk pembelajaran dan dokumentasi.
+ Kekurangan: Tidak secepat executable file untuk aplikasi produksi.
"""

# ╔═╡ 131916ee-dca8-4fa7-8211-92bd0056399f
md"""
## Instalasi Pluto Notebook
Buka terminal Julia, ketikkan:
```julia
using Pkg; Pkg.add("Pluto")
```
Sintaks di atas berfungsi untuk menggunakan package **Pkg**, lalu menambahkan package **Pluto** ke dalam program. Untuk menggunakan dan menjalankan Pluto, ketikkan:
```julia
using Pluto; Pluto.run()
```

Jika tidak ada masalah, maka akan terbuka laman Pluto pada web browser.
"""

# ╔═╡ 04bcd477-1090-453c-8dfb-2ad0f788b60e
md"""
## Sintaks Dasar pada Bahasa Pemrograman Julia
### Operator Aritmetika
|Ekspresi |Keterangan|
|:-------:|:---------|
|`+`      | penjumlahan|
|`-`      | pengurangan|
|`*`      | perkalian  |
|`/`      | pembagian  |
|`\`      | pembagian terbalik|
|`%`      | modulus; sisa pembagian|
|`÷`      | pembagian dengan hasil bilangan integer; pembulatan ke bawah|
|`^`      | pangkat|
|`.`      | (dot) operasi per elemen matriks/array|
"""

# ╔═╡ 50c0a390-d507-4d45-b0cc-ac58999b59cc
x = 1 # Memasukkan nilai ke dalam variabel

# ╔═╡ 28c59882-d3e8-4fd6-9c5d-fac547fb00cf
y = 2

# ╔═╡ 4fbcd945-b477-4c85-8c36-fcaea71b6ccd
x+y

# ╔═╡ 04258e45-97ea-4d3b-84a3-7e00aad8ce8e
md"""
### Operator Pembanding
Membandingkan nilai kebenaran dari variabel.

|Ekspresi|Keterangan|
|:-------|:---------|
|`<`     | kurang dari?|
|`>`     | lebih dari? |
|`<=`    | kurang dari atau sama dengan?|
|`>=`    | lebih dari atau sama dengan? |
|`==`    | bernilai sama?|
|`!=`    | bernilai tidak sama?|
"""

# ╔═╡ 05d131b2-2beb-4ac8-a62e-3361864670a3
x<y # Apakah x kurang dari y?

# ╔═╡ 4c28ec82-cc15-490c-8c4c-7121fb3ad067
md"""
### Operator Logika
|Ekspresi|Keterangan|
|:-------|:---------|
|`&&`    | Jika keduanya true, maka bernilai true. Selain itu, false.|
|`\|\|`  | Jika salah satunya true, maka true. Jika tidak ada yang true, maka false.|
|`!`     | Negasi; pembalik nilai kebenaran.|
"""

# ╔═╡ c982f438-2ef2-4b45-9cad-289d834868ac
c = true

# ╔═╡ 161407ee-6a9d-4a42-95b4-e49cfc7cec4d
d = false

# ╔═╡ a6def7a0-a125-4808-a410-726c75ae5dcd
c && d

# ╔═╡ d916b5dd-297d-4a68-b4ab-635d0ac4621a
md"""
### Aliran Kontrol: if, else, elseif
Mengeksekusi perintah berdasarkan kondisi tertentu.
"""

# ╔═╡ 36ed0ffb-a79d-4af0-9bbc-259b2c041066
if x < y
	println("x kurang dari y")
elseif x > y
	println("x lebih dari y")
else
	println("x sama dengan y")
end

# ╔═╡ 6b56dc9e-bf8a-45de-bca1-d2c9ac3694fe
md"""
### Fungsi
"""

# ╔═╡ 90ff6147-79e1-4af0-8c90-5ac9e19b4f12
md""" 
Sintaks dasar untuk membuat fungsi dalam julia adalah sebagai berikut:

```julia
function nama_fungsi(parameter1, parameter2)
	...
	...
	...
	return output
end
```
"""

# ╔═╡ 1aac5b0d-4c0d-424d-b468-4f6ac200a5e0
md"""
Berikut adalah contoh fungsi untuk mempangkatkan sebuah bilangan dengan parameter a dan b. Output dari fungsi adalah bilangan a dipangkatkan bilangan b.
"""

# ╔═╡ 93869931-77d1-4f9f-98dc-f7b83e02e2d0
function pangkat(a,b)
	return a^b
end

# ╔═╡ e08afc09-b660-4874-88d4-32ae3140697a
pangkat(10,2)

# ╔═╡ eecad38b-148b-4fdc-90ee-413df1158ce0
function bandingkan(a,b)
	if a < b
		println("$a kurang dari $b")
	elseif a > b
		println("$a lebih dari $b")
	else
		println("$a sama dengan $b")
	end
end

# ╔═╡ 1b664b0b-64a7-4cb3-a71c-0149d3fae22f
bandingkan(10,4)

# ╔═╡ Cell order:
# ╟─9786fd40-71aa-11ef-23ba-5110b3852151
# ╟─cdcd9e28-66ad-48d3-9ae0-df1e5d284e7f
# ╟─5aa727c1-9c45-42d1-8061-44999877824e
# ╟─131916ee-dca8-4fa7-8211-92bd0056399f
# ╟─04bcd477-1090-453c-8dfb-2ad0f788b60e
# ╠═50c0a390-d507-4d45-b0cc-ac58999b59cc
# ╠═28c59882-d3e8-4fd6-9c5d-fac547fb00cf
# ╠═4fbcd945-b477-4c85-8c36-fcaea71b6ccd
# ╟─04258e45-97ea-4d3b-84a3-7e00aad8ce8e
# ╠═05d131b2-2beb-4ac8-a62e-3361864670a3
# ╟─4c28ec82-cc15-490c-8c4c-7121fb3ad067
# ╠═c982f438-2ef2-4b45-9cad-289d834868ac
# ╠═161407ee-6a9d-4a42-95b4-e49cfc7cec4d
# ╠═a6def7a0-a125-4808-a410-726c75ae5dcd
# ╟─d916b5dd-297d-4a68-b4ab-635d0ac4621a
# ╠═36ed0ffb-a79d-4af0-9bbc-259b2c041066
# ╟─6b56dc9e-bf8a-45de-bca1-d2c9ac3694fe
# ╟─90ff6147-79e1-4af0-8c90-5ac9e19b4f12
# ╟─1aac5b0d-4c0d-424d-b468-4f6ac200a5e0
# ╠═93869931-77d1-4f9f-98dc-f7b83e02e2d0
# ╠═e08afc09-b660-4874-88d4-32ae3140697a
# ╠═eecad38b-148b-4fdc-90ee-413df1158ce0
# ╠═1b664b0b-64a7-4cb3-a71c-0149d3fae22f
