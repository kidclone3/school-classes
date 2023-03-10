# dbinom: P(X=x)
# pbinom: P(X <= x)
# rbinom(k, size = n, prob = p): tạo mẫu cỡ k.
dbinom(x=10, size=50, prob=0.25)
x = 0:50
p = dbinom(x, 50, 0.25)
sum(x*p)
# Poisson
# dpois(x, lambda=5): P(X=x)
# ppois(x, lambda=5): P(X <= x)

# Phân bố chuẩn
# rnorm(n, mean, sd): Tạo mẫu cỡ n
# dnorm(x, mean, sd): Hàm mật độ f(x)
# pnorm(x, mean, sd): Tính P(X <= x)
# qnorm(x, mean, sd): Tìm x để P(X <= x) = p
# mean = muy = EX.

# Chỉ số IQ của 1 người được cho là tuân theo phân bố chuẩn, bới gtri trung bình là 100, độ lệch chuẩn là 15.
# Một người được coi là bình thường nếu có IQ trong khoảng [85, 115]. tính xác suất của khoảng này.
pnorm(115, 100, 15) - pnorm(85,100, 15)
diff(pnorm(c(85, 115), 100, 15))

# Phân bố mũ
# dexp(x, rate = lambda): Hàm mật độ f(x)
# pexp(x, rate = lambda): P(X <= x)
# qexp(x, rate = lambda)

# readxl Nhập dữ liệu từ file excel
library(readxl)
A <- read_excel("~/Documents/bb5.xlsx")
