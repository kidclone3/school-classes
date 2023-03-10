data = read.csv('./Book2.csv', header = T)
data <- na.omit(data)
n <- length(data)
header <- names(data)
# 1. Vẽ “Normal probability plot” cho các biến trong dữ liệu. Từng biến có phân
# phối chuẩn 1 chiều không?

par(mfrow=c(1, n-1))

npp <- lapply(2:n, function(col) {
  # print(col)
  qqnorm(data[,col], main=header[col], xlab= ifelse(shapiro.test(data[,col])$p.value > 0.05, "Is Normal", "Not Normal"))
  qqline(data[,col])
  print(shapiro.test(data[,col])$p.value)
})
npp
par(mfrow=c(1,1))

# 2. Tính “Generalised distance”.
dl <- data[, 2:n]
S <- cov(dl)
dl.means <- colMeans(dl)
d_2 <- apply(dl, MARGIN=1, function(x) {
  print(x)
  t(x-dl.means) %*% solve(S) %*% (x-dl.means)
})
d_2
mah <- mahalanobis(dl, colMeans(dl), cov(dl))
mah

# 3. Vẽ “Chi-square plot” .
plot(qchisq((1:nrow(dl) - 1/2) / nrow(dl), df=ncol(dl)), sort(d_2), xlab = expression(paste(chi[7]^2, " Quantitle")), ylab = "Ordered distances")
abline(a=0, b=1)

# 4. Dữ liệu đã cho có phân phối chuẩn nhiều chiều không?
# Vì các điểm không nằm trên đường thẳng => Không phân phối chuẩn nhiều chiều.

