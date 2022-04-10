
# Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan
# seseorang yang menghadiri acara vaksinasi sebelumnya.

# Soal 1A: Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi
#           sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ?
#           (distribusi Geometrik)
  X <- 3
  P <- 0.2
  Q <- 1 - P
 
  geo_dist_i <- dgeom(X,P)
  
# Soal 1B: Mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi
#           acak tersebut X = 3 ( distribusi geometrik acak () == 3 )
  N <- 10000
  geo_dist_ii <- rgeom(N,P)
  mean(geo_dist_ii == 3)
  
# Soal 1C    : Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?
# Jawaban 1C : Pada poin a nilainya statis, yaitu 0.1024. Pada poin b nilainya dinamis,
#              tetapi mendekati nilai A. Sehingga dapat ditarik kesimpulan bahwa
#              meskipun nilai b bernilai dinamis, tetapi nilai poin b selalu mendekati poin a

# Soal 1D: Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama
  hist(rgeom(N,P),main = "Distribusi Geometrik Peluang X = 3 gagal sebelum sukses pertama")
  
# Soal 1E: Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.
  mean <- Q/P
  mean
  variance <- (Q/(P^2))
  variance
 
