# command + z gets back old code
s = vector(length = 200)
for (t in 1:100) {
  s[t] = 0
}
for (t in 101:200) {
  s[t] = 10*exp(-(t-100)/20)*cos((2*pi*t)/4)
}
plot.ts(s, main = 's')
acf(s, lag.max = 50)
par(mfrow = c(1, 2))
plot.ts(s, main = 's')
acf(s, lag.max = 50)
mean(s)
