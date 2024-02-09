n <- 100
u <- runif(100)
x <- vector(length = n)
for (t in 1:n) {
  x[t] <- sin(2*pi*u[t])
}
plot.ts(x, ylim = c(-3, 3), col = "red", lwd = 2,
        main = "x is weakly stationary")
abline(lm(x ~ time(x)), col = "blue", lwd = 2)

# constant mean ~0
# stationary covariance (other than lag 0, of course)
acf(x) 
