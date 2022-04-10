# P1_Probstat_D_5025201078
Penjelasan Praktikum Probabilitas dan Statistik D Modul 1 oleh Rere Arga Dewanata (5025201078)  

## Soal 1  
Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.   

### Soal 1A  
**Deskripsi Soal**  
Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi dengan menggunakan distribusi geometrik ?    

**Kode Program**    
```R
X <- 3
P <- 0.2
Q <- 1 - P

geo_dist_i <- dgeom(X,P)
```    

**Penjelasan** 
Dengan memanfaatkan fungsi `dgeom` yang menerima parameter n dan peluang, akan didapatkan nilai peluang untuk bertemu 3 orang yang tidak menghadiri acara vaksinasi dan akan bertemu keberhasilan pertama dengan peluang 0.2. Setelah fungsi tersebut dijalankan, akan didapatkan nilai peluang sebesar 0.1024  

**Screenshot**  
![1A](https://user-images.githubusercontent.com/70679432/162615719-ade0e748-5284-423e-9421-cbbba2785e23.jpeg)  


