ts_model <- function(B_1, B_2, n, sigma_2) {
  w = rnorm(n, 0, sqrt(sigma_2))
  x = vector(length = n)
  for (t in 1:n) {
    x[t] <- B_1 + B_2*t + w[t]
  }
  plot.ts(x, main = "Time series models",
          col = "blue", lwd = 2, ylim = c(-75, 350))
}

ts_model_stat <- function(B_1, B_2, n, sigma_2) {
  w = rnorm(n, 0, sqrt(sigma_2))
  x = vector(length = n)
  y = vector(length = n)
  for (t in 1:n) {
    x[t] <- B_1 + B_2*t + w[t]
  }
  for (t in 2:n) {
    y[t] <- x[t] - x[t-1]
  }
  lines(y, col = "grey", lwd = 2)
}

ts_model(2, 3, 100, 500)
ts_model_stat(2, 3, 100, 500)
legend("topleft", legend = c("Non-stationary", "Stationary"),
       col = c("blue", "grey"), lwd = 2, cex = .8)