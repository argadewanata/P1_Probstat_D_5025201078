# Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3).
  Lambda <- 3

# Soal 5A: Fungsi Probabilitas dari Distribusi Exponensial
  exp_dist_i <- dexp(x = Lambda)
  
# Soal 5B: Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random
  set.seed(1)
  N_10 <- runif(10)
  hist(rexp(N_10),main = "Histogram Distribusi Exponensial 10 Angka Acak")
  
  set.seed(1)
  N_100 <- runif(100)
  hist(rexp(N_100),main = "Histogram Distribusi Exponensial 100 Angka Acak")
  
  set.seed(1)
  N_1000 <- runif(1000)
  hist(rexp(N_1000),main = "Histogram Distribusi Exponensial 1000 Angka Acak")
  
  set.seed(1)
  N_10000 <- runif(10000)
  hist(rexp(N_10000),main = "Histogram Distribusi Exponensial 10000 Angka Acak")
  
# Soal 5C: Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial untuk n = 100 dan λ = 3
  N <- 10
  exp_dist_ii <- rexp(10)
  mean <- mean(exp_dist_ii)
  mean
  variance <- var(exp_dist_ii)
  variance
  
  
