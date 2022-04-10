# Diketahui nilai x = 2 dan v = 10.
  X <- 2
  V <- 10
  
# Soal 4A: Fungsi Probabilitas dari Distribusi Chi-Square.
  chisq_dist_i <- dchisq(X,df = V)
    
# Soal 4B: Histogram dari Distribusi Chi-Square dengan 100 data random.
  N = runif(100)
  chisq_dist_ii <- rchisq(N,df = V)
  hist(chisq_dist_ii,main = "Grafik Histogram Distribusi Chi-Square pada 100 Random Data")

# Soal 4C: Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Chi-Square.
  mean <- V
  variance <- V * 2
