# install.packages("tigerstats")
library(tigerstats)
require(manipulate)
SimpleRandom()
data("FakeSchool")
help("FakeSchool")

# 7 mẫu của 1 biến GPA.
sample(FakeSchool$GPA, 7, replace=FALSE)
mu <- mean(~GPA, data=FakeSchool)
mu
help("set.seed")
set.seed(0)
# 7 mẫu của tất cả các biến.
srs <- popsamp(7, FakeSchool)
srs

xbar.srs <- mean(~GPA, data=srs)
xbar.srs

# data("mtcars")
# Confidence Interval Estimation
# Example 0.1: Suppose a random sample of size n = 100 has been ...
# The confidence level is (1-alpha) = 0.95. find z_{\alpha / 2}
# z1 <- qnorm(0.025, lower.tail = FALSE)
# z1

# Hypothesis Test 
# Step 1: Calculate the mean of miles per gallon
sample.mean <- mean(mpg)
print(c("sample.mean = ", sample.mean))

# Step 2: Calculate the standard error of the mean
sample.n <- length(mpg)
sample.nd <- sd(mpg)
sample.se <- sample.sd/sqrt(sample.n)
print(c("sample.se = ", sample.se))
  
# Step 3: Calculate the t-statistic for test

# Step 4: Calculate the p-value

# Conduct a t-test to determine if mpg is greater than 10.

# H0: mu = 10; Ha: mu \> 10
t.test(mpg, mu=10, level=0.95, alternative="greater")
# H0: mu = 10; Ha: mu \< 10
t.test(mpg, mu=10, level=0.95, alternative="less")
# H0: mu = 10; Ha: mu != 10
t.test(mpg, mu=10, level=0.95, alternative="two.sided")

# Exercise size_sample = 29, library(MASS), data('Boston') set.seed(0)) mu0=5
size_sample = 29
library(MASS)
data('Boston')
set.seed(0)

# Example 1: Suppose a random sample of size n = 36 has been selected from a population with \sigma = 30 and a sample mean of \bar{x} = 205.
# what is the 90% confidence interval estimate of \mu?
# what is the 95% confidence interval estimate of \mu?
# what is the 99% confidence interval estimate of \mu?


# Example 2: If a 99% confidence interval is [228, 232] for a population with
# \sigma = 10, what is n?
z0 <- qnorm(0.01/2, lower.tail=F)
sigma = 10
# Hpt:
# muy - z0 * sigma/sqrt(n) = 228
# muy + z0 * sigma/sqrt(n) = 232

muy = (228+232)/2
n = ((z0*sigma)/(232-muy))^2

# matrix method:
A = matrix(c(1, 1, -z0*sigma, +z0*sigma), nrow=2)
b = matrix(c(228, 232), nrow=2)
x = solve(A, b)
n = (1/x[2][1])^2

# Exercise 3: Một công ty hoá chất sản xuất chất tẩy rửa gia đình tuyên bố sản phẩm của họ làm sạch mọi loại vết bẩn và diệt hết các loại vi khuẩn có hại trong vòng 2 giờ. Tổ chức bảo vệ quyền lợi người tiêu dùng tiến hành kiểm nghiệm tuyên bố trên. Trong 100 trường hợp sử dụng chất tẩy rửa, chỉ có 80 trường hợp làm sạch được vết bẩn và tiêu diệt hết được vi khuẩn có hại tỏng 2 giờ. Với độ tin cậy 99%, có thể tuyên bố lời nói của cty hoá chất là đúng được không?
# => Bài toán ước lượng khoảng tin cậy, từ đó so sánh vs p0 để đưa ra kết luận cuối cùng
f = 80/100
n = 100
p0=1

p.error <- pnorm(0.005, lower.tail=F) * sqrt(f*(1-f)/n)

# => Khoảng tin cậy là 
c(f-p.error, f+p.error)
# => Lời tuyên bố của công ty hoá chất là sai 