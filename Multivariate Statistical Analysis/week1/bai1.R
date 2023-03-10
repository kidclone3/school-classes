# 1. Nhập vào R hai vectơ sau:
#   X = (1 2 3 4 5 6 7 8 9);
#   Y = (1.5 2.3 3.2 4.6 5.4 6.6 7.6 8.6 9.1).

X <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)
Y <- c(1.5, 2.3, 3.2, 4.6, 5.4, 6.6, 7.6, 8.6, 9.1)

#a) Tính độ dài hai vectơ.
length(X)
length(Y)
# b) Trích phần tử thứ 2 trong vectơ X và trích các phần tử thứ 1, 4, 7 trong vectơ
# Y.
X[2]
Y[c(1,4,7)]

# c) Thay giá trị của phần tử thứ 4 trong X bởi 215. Thay các giá trị của các phần tử
# thứ 1, 5 trong Y bởi 99, 199.
X[4] = 215
replace(Y, c(1,5), c(99, 199))

# d) Làm tròn giá trị các phần tử của Y.
round(Y)

# e) Tính tổng X + Y; tích của 5 và Y.
X + Y
5 * Y
