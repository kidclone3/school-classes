# bai 1
data = read.csv("./Book1.csv", header = T)
data

# a) Xét mẫu số liệu gồm 4 biến về điểm toán, lịch sử, địa lí, vật lí được lấy trên 5 học sinh.
# Tính kỳ vọng mẫu.
data_a = data[,c("toan", "lichsu", "diali", "vatli")]
colMeans(data_a)

# b) Tính phương sai mẫu, biết:
#   B1) Mẫu gồm 6 biến về điểm toán, tiếng anh, lịch sử, địa lí, hoá học, vật lí và số liệu
# được lấy trên 3 học sinh 1, 3, 5.
# B2) Mẫu gồm 3 biến về điểm tiếng anh, lịch sử, địa lí và số liệu được lấy trên 5 học sinh.
data_b1 = data[c(1,3,5), 2:7]
cov(data_b1)
data_b2 = data[, c("toan", "tienganh", "lichsu", "diali")]
cov(data_b2)

# c) Tìm tương quan mẫu gồm 6 biến về điểm toán, tiếng anh, lịch sử, địa lí, hoá học, vật lí và
# số liệu được lấy trên 4 học sinh 1, 2, 3, 5.
data_c = data[c(1,2,3,5), c("toan", "tienganh", "lichsu", "diali", "vatli", "hoahoc")]
data_c
cor(data_c)

# bai2
data2 = read.csv("./Book2.csv", header=T)
data2 = na.omit(data2)



# a) Tính kỳ vọng mẫu gồm 7 biến được lấy số liệu tại Albany, Atlanta, Chicago, Cleveland,
# Colombus và Denver.
cities = c("Albany ","Atlanta ","Chicago ","Cleveland ","Columbus ","Denver ")
data2_a = data2[data2$ThanhPho %in% cities,]
colMeans(data2_a[,2:8])

# b) Với mẫu gồm 3 biến về hàm lượng SO2 trong không khí, nhiệt độ và lượng mưa trung
# bình hằng năm tại 13 thành phố, hãy tính phương sai mẫu.
cols = c("SO2", "NhietDo", "LuongMua")
data2_b = data2[, cols]
cov(data2_b)

# c) Tính tương quan mẫu gồm 7 biến được lấy số liệu tại 13 thành phố.
cor(data2[,2:8])
