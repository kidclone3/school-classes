data = read.csv("./table1.csv", header = T)
data
colMeans(data[,2:4])
mean(data[,2])

cov(data[, c(2,3,4)])
cov(subset(data, gioitinh=="nam")[, 2:4])


