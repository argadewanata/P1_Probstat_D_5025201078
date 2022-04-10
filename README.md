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

## Soal 2  
Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2.  

**Kode Program**  
```R
Size <- 20
P <- 0.2
Q <- 1 - P
```  

### Soal 2A  
**Deskripsi Soal**  
Peluang terdapat 4 pasien yang sembuh.  

**Kode Program**  
```R
# Soal 2A
N <- 4
bino_dist_i <- dbinom(N,Size,P)
```  
**Penjelasan**  
Dengan menggunakan fungsi `dbinom`, didapatkan nilai dari peluang terdapat 4 pasien sembuh sebanyak 0.21819  

**Screenshot**  
![2A](https://user-images.githubusercontent.com/70679432/162619217-829b459c-e0a0-4171-97d9-acfc390ade30.jpeg)  

### Soal 2B  

**Deskripsi Soal**  
Gambarkan grafik histogram berdasarkan kasus tersebut.  

**Kode Program**  
```R
# Soal 2B
bino_dist_ii <- rbinom(20,Size,P)
hist(bino_dist_ii,main ="Grafik Histogram Distribusi Binomial")
```  

**Penjelasan**  
Fungsi `rbinom` akan menghasilkan jumlah nilai acak yang diperlukan dari probabilitas sampel yang diberikan. Hasil tersebut akan ditampilkan dalam bentuk grafik histogram dengan fungsi `hist`.  

**Screenshot**  
![2B](https://user-images.githubusercontent.com/70679432/162619352-e8fe9806-420d-4e33-9220-b035e8a44cf1.jpeg)  

### Soal 2C  

**Deskripsi Soal**  
Nilai Rataan (μ) dan Varian (σ²) dari  Distribusi Binomial.  

**Kode Program**  
```R
# Soal 2C
mean <- N*P
variance <- N*P*Q
``` 
**Penjelasan**  
Untuk mendapatkan kedua nilai tersebut, digunakan rumus mean `N*P` dan rumus mean `N*P*Q`.  

**Screenshot**  
![2C](https://user-images.githubusercontent.com/70679432/162619632-4a537e2d-e5c4-4835-b183-09a0b506516c.jpeg)  

## Soal 3  
Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)  

**Kode Program**  
```R
Lambda <- 4.5
```  

### Soal 3A  

**Deskripsi Soal**  
Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?  

**Kode Program**  
```R
# Soal 3A
X <- 6
poiss_dist_i <- dpois(X,Lambda)
```  

**Penjelasan**  
Dengan memanfaatkan fungsi `dpois`, akan didapatkan nilai peluang sukses 6 bayi lahir besok adalah 0.12812  

**Screenshot**  
![3A](https://user-images.githubusercontent.com/70679432/162619852-4d7ede51-16a0-4c22-b18a-73e725ea18a4.jpeg)  

### Soal 3B  

**Deskripsi Soal**  
Simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama setahun (n = 365)  

**Kode Program**  
```R
# Soal 3B
N <- 365
poiss_dist_ii <- rpois(N,Lambda)
hist(poiss_dist_ii,main = "Grafik histogram distribusi poisson kelahiran 6 bayi selama 1 tahun")
```  

**Penjelasan**  

**Screenshot**
![3B](https://user-images.githubusercontent.com/70679432/162619978-3e5d961f-bb37-4354-aeea-59592f97d017.jpeg)  

### Soal 3C  
**Deskripsi Soal**  
Bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan?  

**Kode Program**  
```R
# Soal 3C
mean(poiss_dist_ii == 6)  
```  

**Penjelasan**  

**Screenshot**  
![3C](https://user-images.githubusercontent.com/70679432/162620049-4baaa220-6e42-45cd-8989-2a6eafd70662.jpeg)  

### Soal 3D  
**Deskripsi Soal**  
Nilai Rataan (μ) dan Varian ( σ² ) dari Distribusi Poisson.  

**Kode Program**  
```R
# Soal 3D
mean <- Lambda
variance <- mean
```  

**Screenshot**  
![3D](https://user-images.githubusercontent.com/70679432/162620127-129f55c1-1d83-4619-9d83-5fbfe11b800e.jpeg)  

## Soal 4  
Diketahui nilai x = 2 dan v = 10.  
**Kode Program** 
```R
X <- 2
V <- 10
```  

### Soal 4A  
**Deskripsi Soal**
Fungsi Probabilitas dari Distribusi Chi-Square.  

**Kode Program**  
```R
# Soal 4A
chisq_dist_i <- dchisq(X,df = V)
```  

**Penjelasan**  

**Screenshot**  
![4A](https://user-images.githubusercontent.com/70679432/162620381-1870d25f-5846-4143-9969-41af6b88358d.jpeg)  

### Soal 4B  
**Deskripsi Soal**  
Histogram dari Distribusi Chi-Square dengan 100 data random.  

**Kode Program**  
```R
# Soal 4B
N = runif(100)
chisq_dist_ii <- rchisq(N,df = V)
hist(chisq_dist_ii,main = "Grafik Histogram Distribusi Chi-Square pada 100 Random Data")
```  

**Penjelasan**  

**Screenshot**  
![4B](https://user-images.githubusercontent.com/70679432/162620433-a25ac404-8e79-45f0-af23-32629ffe2fd8.jpeg)  

### Soal 4C  
**Deskripsi Soal**  
Nilai Rataan (μ) dan Varian ( σ² ) dari Distribusi Chi-Square.  

**Kode Program**  
```R
# Soal 4C
mean <- V
variance <- V * 2
```  

**Penjelasan**  

**Screenshot**  
![4C](https://user-images.githubusercontent.com/70679432/162620500-23324422-f3b8-433d-a694-9e245767951f.jpeg)  













