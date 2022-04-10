# Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2.
  Size <- 20
  P <- 0.2
  Q <- 1 - P

# Soal 2A: Peluang terdapat 4 pasien yang sembuh.
  N <- 4
  bino_dist_i <- dbinom(N,Size,P)
  
# Soal 2B: Gambarkan grafik histogram berdasarkan kasus tersebut.
  bino_dist_ii <- rbinom(20,Size,P)
  hist(bino_dist_ii,main ="Grafik Histogram Distribusi Binomial")

# Soal 2C: Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Binomial.
  mean <- mean(bino_dist_ii)
  variance <- var(bino_dist_ii)
  
  
