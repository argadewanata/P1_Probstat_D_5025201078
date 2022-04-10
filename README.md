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


