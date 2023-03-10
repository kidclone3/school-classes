data = read.csv('./table1.csv', header = T)
# Ki vong mau, ma tran hiep phuong sai
colMeans(data[,2:4])
cor(data[,2:4])
# Để kiểm định một vecto ngẫu nhiên k-chiều x thì ần thoả mãn hai điều kiện:
# 1. Từng biến ngẫu nhiên x_1, x_2, ... x_k tuân theo phân phối chuẩn.
# 2. Khoảng cách tổng quát d tuần theo phân phối khi-bình phương với k bậc tự dó  

# Kiểm định từng biến ngẫu nhiên có pp chuẩn?
shapiro.test(data[,"X1"]) # KĐ X1 có pp chuẩn không?

# VD: Bài toán: H0: X1 tuân theo pp chuẩn | H1: X1 không tuân theo pp chuẩn
# Do p-value = 0.3374 > 0.05 nên chấp nhận H0 | không có cơ sở để bác bỏ H0
# KL: Có cơ sở để nói X1 tuân theo pp chuẩn



par(mfrow=c(1,3)) # chia khung vẽ đồ thị làm 1 hàng 3 cột 
qqnorm(data[,"X1"], main='X1'); qqline(data[,"X1"]) # đồ thị xác suất chuẩn của X1
qqnorm(data[,"X2"], main='X2'); qqline(data[,"X2"]) # đồ thị xác suất chuẩn của X2
qqnorm(data[,"X3"], main='X3'); qqline(data[,"X3"]) # đồ thị xác suất chuẩn của X3



# Vẽ chung dùng 1 hàm:
dl1 = data[,2:4]
colnames(dl1)

sapply(colnames(dl1), function(x) {
  print(x)
  qqnorm(dl1[[x]], main = x)
  qqline(dl1[[x]])
})


par(mfrow=c(1,1))

dl1.cm <- colMeans(dl1)
S <- cov(dl1)

d__2 <- apply(dl1, MARGIN = 1, function(x) {
  print(x)
  t(x-dl1.cm) %*% solve(S) %*% (x-dl1.cm)
}) # d^2
# d_i = khoảng cách tương ứng với quan sát thứ i.
# x_i = quan sát thứ i.
x = dl1

mah <- mahalanobis(x, colMeans(x), cov(x))

# Vế phải trong mệnh đề 3.1.3 (xác suất)
1:nrow(x)

(1:nrow(x) - 1/2) / nrow(x) # vecto (i-1/2)/n voi i = 1,2,...n

plot(qchisq((1:nrow(x) - 1/2) / nrow(x), df=3), sort(d__2), xlab = expression(paste(chi[3]^2, " Quantitle")), ylab = "Ordered distances")
# Nếu Y tuân theo pp Khi-bình phương với bậc tự do là k = 3 và P(Y<a) = 0.025 thì a = qchisq(0.025, 3)
abline(a=0, b=1)


