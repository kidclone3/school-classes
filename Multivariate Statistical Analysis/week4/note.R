Kiểm định vecto ngẫu nhiên k-chiều có tuân theo phân bố chuẩn k - chiều hay ko?
  (i) Vẽ đồ thị, QQ-plot để kiểm định từng biến ngẫu nhiên có tuân theo pp chuẩn 1-chiều ko?
  (ii) Vẽ đồ thị Chi-plot để xem các "khoảng cách" có tuân theo pp Khi-bình phương tại phân vị mức (i-1/2)/n (i=1,2,...,n) với k bậc tự do.

Trong bài kiểm tra, để kiểm định pp chuẩn nhiều chiều?
  (i) Kiểm định xem từng biến có tuân theo pp chuẩn 1-chiều: shapiro.test()
  (ii) Kiểm định xem các "khoảng cách" có tuân theo pp Khi-bình phương: chisq.test(d)

Những bài toán kiểm định phân phối thì mặc định alpha = 0.05
