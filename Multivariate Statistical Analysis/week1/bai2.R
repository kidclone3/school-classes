# 2. Nhập vào hai ma trận

A <- matrix(c(1, 2, 1, 3, 3, 6, 5, 4, 2, 4, 3, 2, 8, 7, 5, 1), ncol=4)
B <- matrix(c(1, 2, 3, 4, 4, 1, 5, 3, 1, 7, 8, 9, 4, 6, 3, 7), ncol=4)

# a) Đổi tên các hàng của ma trận A theo thứ tự lần lượt là “X”, “Y”, “Z”, “T” và
# đặt tên ma trận này là C.
C <- A
rownames(C) <- c('X', 'Y', 'Z', 'T')
View(C)

# b) Tính tổng các phần tử theo hàng và tổng các phần tử theo cột của ma trận B.
colSums(B)
rowSums(B)

# c) Đưa ra giá trị ở hàng 2, cột 3 của ma trận A.
A[2,3]

# d) Đưa ra ma trận D với D là ma trận cỡ 2x4 gồm các phần tử ở hàng 1 và hàng 2
# của ma trận A.
D <- matrix(0, 2, 4)
D[c(1,2),] = A[c(1,2),]
View(D)

# e) Đưa ra ma trận E với E là ma trận cỡ 4x3 gồm các phần tử trừ cột 3 của ma
# trận B.
E <- matrix(0, 4, 3)
E <- B[, -3]

# f) Tính ma trận chuyển vị và ma trận nghịch đảo của ma trận A.
A_t = t(A)
A_minus1 = solve(A)
# Test:
A_minus1 %*% A

# g) Đưa ra giá trị riêng và vectơ riêng của ma trận B.
B_res = eigen(B)
B_res$values # Gia tri rieng
B_res$vectors # Vecto rieng

# h) Tính định thức của ma trận B.
det(B)

# i) Tính tích AB.
A %*% B

# j) Biết Z là tích của ma trận A và ma trận nghịch đảo của B. Tìm Z.
B_minus1 = solve(B)
Z <- A %*% B_minus1
Z
