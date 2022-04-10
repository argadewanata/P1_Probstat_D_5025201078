# P1_Probstat_D_5025201078
Penjelasan Praktikum Probabilitas dan Statistik D Modul 1 oleh Rere Arga Dewanata (5025201078)  

## Soal 1  
Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.   

### Soal 1A  
**Deskripsi Soal**  
Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi dengan menggunakan distribusi geometrik ?    

**Kode Program**    
```R
# Soal 1A
X <- 3
P <- 0.2
Q <- 1 - P

geo_dist_i <- dgeom(X,P)
```    

**Penjelasan**   
Dengan memanfaatkan fungsi `dgeom` yang menerima parameter n dan peluang, akan didapatkan nilai peluang untuk bertemu 3 orang yang tidak menghadiri acara vaksinasi dan akan bertemu keberhasilan pertama dengan peluang 0.2. Setelah fungsi tersebut dijalankan, akan didapatkan nilai peluang sebesar 0.1024  

**Screenshot**  
![1A](https://user-images.githubusercontent.com/70679432/162615719-ade0e748-5284-423e-9421-cbbba2785e23.jpeg)  

### Soal 1B  
**Deskripsi Soal**  
Nilai mean dari distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3  

**Kode Program**  
```R
# Soal 1B
N <- 10000
geo_dist_ii <- rgeom(N,P)
mean(geo_dist_ii == 3)
```  

**Penjelasan**  
Berbeda dengan fungsi sebelumnya, fungsi `rgeom` adalah fungsi yang berguna untuk mendapatkan distribusi geometrik dengan variabel acak. Dalam hal ini, variabel acak sejumlah 10000 data dan peluangnya sebesar 0.2. Setelah fungsi tersebut dijalankan, akan didapatkan nilai mean yang acak pula tergantung dengan hasil yang didapat pada line sebelumnya  

**Screenshot**  
![1B_ii](https://user-images.githubusercontent.com/70679432/162615960-58acb1a9-1ede-4a74-a74d-6b327910d165.jpeg)  

### Soal 1C  
**Deskripsi Soal**  
Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?  

**Penjelasan**  
Pada poin a nilainya statis, yaitu 0.1024. Pada poin b nilainya dinamis, tetapi tidak terpaut jauh dari nilai poin A. Sehingga dapat ditarik kesimpulan bahwa meskipun nilai b bernilai dinamis, tetapi nilai dari poin b selalu mendekati nilai dari poin a  

### Soal 1D
**Deskripsi Soal**  
Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama  

**Kode Program**  
```R
# Soal 1D
hist(rgeom(N,P),main = "Distribusi Geometrik Peluang X = 3 gagal sebelum sukses pertama")  
```  
**Penjelasan**  
Dengan menggunakan fungsi `hist`, kita dapat membuat sebuah histogram dari sebuah distribusi  

**Screenshot**  
![1D](https://user-images.githubusercontent.com/70679432/162616196-63ab2ac8-105a-42ce-8a23-109efc139107.jpeg)  

### Soal 1E
**Deskripsi Soal**  
Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.  

**Kode Program**  
```R
# Soal 1E
mean <- 1/P
variance <- (Q/(P^2))
```  
**Penjelasan**
Untuk mendapatkan kedua nilai tersebut, digunakan rumus mean `1/P` dan rumus mean `Q/P^2`.  

**Screenshot**  
![1E](https://user-images.githubusercontent.com/70679432/162616385-c36972a6-07fa-4fc7-a88f-6a65c099913a.jpeg)





