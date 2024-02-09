n <- 500
x <- vector(length = n)
w <- rnorm(n)
for (t in 2:n) {
  x[t] <- w[t]*w[t-1]
}
# plot of the data
plot.ts(x, col = "red", lwd = 2, main = "Time-series of x")
# it looks to be stationary

# autocovariance function
acf(x, lag.max = 50, type = "covariance")
