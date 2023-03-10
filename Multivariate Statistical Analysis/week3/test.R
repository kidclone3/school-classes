dl1 = matrix(c(7,5,6,5, 3, 4, 4, 4), ncol = 2)
dl2 = matrix(c(6,5,7,5,6.5,5, 4,4,4,3,4,3), ncol=2)
X_bar <- colMeans(dl1)
Y_bar <- colMeans(dl2)

S1 = cov(dl1)
S2 = cov(dl2)

n1 = 4
n2 = 6
S = (n1-1)*S1 + (n2-1)*S2

T_2 = t(X_bar - Y_bar) %*% solve((1/n1+1/n2)*S) %*% (X_bar - Y_bar)
fish <- qf(0.01, 2, n1+n2-2-1, lower.tail = F)
fish * 8/7
