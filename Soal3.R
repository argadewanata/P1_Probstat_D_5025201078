
# Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis
# 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)
  Lambda <- 4.5
 
# Soal 3A: Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?
  X <- 6
  poiss_dist_i <- dpois(X,Lambda)
 
# Soal 3B: Simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama setahun (n = 365)
  N <- 365
  poiss_dist_ii <- rpois(N,Lambda)
  hist(poiss_dist_ii,main = "Grafik histogram distribusi poisson kelahiran 6 bayi selama 1 tahun")

# Soal 3C: bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan?
  mean(poiss_dist_ii == 6)
 
  # Pada poin a nilainya statis, yaitu 0.12812. Pada poin b nilainya dinamis,
  # tetapi mendekati nilai A. Sehingga dapat ditarik kesimpulan bahwa
  # meskipun nilai b bernilai dinamis, tetapi nilai poin b selalu mendekati poin a
 
# Soal 3D: Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson.
  mean <- Lambda
  mean
  variance <- mean
  variance
 
