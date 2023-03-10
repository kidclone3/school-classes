# List all possible simple random samples of size n = 2 that can be selected from the pop-
# ulation {0, 1, 2, 3, 4}. Calculate s2 for the population and V(y) for the sample.

dataX <- c(0,1,2,3,4)
N <- length(dataX)
n <- 2
x <- t(combn(dataX, n))

Sample <- as.vector.data.frame(apply(x, MARGIN = 1, function(x) {
  paste(sprintf("{%d,%d}",x[1], x[2]))
}))
y_bar <- as.vector.data.frame(rowMeans(x))

data2 <- data.frame(Sample, y_bar)
View(data2)
mean(as.vector(x))
sigma = var(as.vector(x))

y_bar <- as.vector(rowMeans(x))

merge(x, t(y_bar))

y_bar.mean <- mean(y_bar)
y_bar.mean_2 <- mean(y_bar^2)
V_y_bar <- y_bar.mean_2 - y_bar.mean^2

