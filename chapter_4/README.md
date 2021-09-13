# Notes: 
## I. Indices: 
* 1. Bisection method: Phương pháp chia đôi.
* 2. Phương pháp dây cung. 
* 3. Phương pháp Newton. 
* 4. Phương pháp cát tuyến. 
* 5. Phương pháp lặp. 
* 6. Phương pháp Bairstow. 

## II. Theories: 
- Term: Số hạng (Kết hợp của nhiều thừa số. VD: 3*x; 2/x
- Factor: Thừa số (VD: Số (3), chữ cái ('a'), biến (x)).
- Số hạng là kết hợp của nhiều thừa số. Biểu thức (Expression) là kết hợp của nhiều số hạng. VD của biểu thức (Expression): 3*x + 2/x. 

### II.1. Phương pháp chia đôi: 
- Đối với điểm kỳ dị, khi sử dụng eps = |c - a| thì thuật toán sẽ cho rằng điểm kỳ dị là nghiệm. Khi sử dụng eps = |f(b)|, thuật toán sẽ không bao giờ dừng lại. 

### II.2. Phương pháp dây cung: 
- Gần giống phương pháp chia đôi ở chỗ đều thu nhỏ khoảng phân ly nghiệm. 
- Đối với điểm kỳ dị, khi sử dụng eps = |c - a| thì thuật toán sẽ cho rằng điểm kỳ dị là nghiệm. Khi sử dụng eps = |f(b)|, thuật toán sẽ không bao giờ dừng lại. 
- Điểm mạnh: Nếu khoảng phân ly nghiệm không chính xác. Thuật toán vẫn có thể tự điều chỉnh. 

### II.3. Phương pháp Newton: 
- Có nét tương đồng với Gradient Descent. 
- Nhược điểm là cần tính đạo hàm. 
- Với "chất lượng nghiệm" tương tự như "Chia đôi" & "Dây cung" nhưng số loops giảm đi rất nhiều. 

### II.4. Phương pháp cát tuyến: 
- Gần giống Newton. Tuy nhiên, thay vì tính công thức đạo hàm thì sử dụng "Sai phân xấp  xỉ" dựa trên 2 bước lặp liên tiếp (Bản chất là thay cho đạo hàm). 
- Không cần khoảng phân ly nghiệm.
- Cần số loops nhiều hơn Newton. 

### II.5. Phương pháp lặp: 
- Chuyển từ f(x) = 0 thành x=g(x); 
- Điểm bất động: g(x). 
- Khi có hiện tượng vô nghiệm, cần đổi điểm xuất phát. 

### II.6. Phương pháp Bairstow: 
- Chỉ áp dụng cho đa thức. 
- Tìm được toàn bộ nghiệm của đa thức. 

### II.7. roots: 
- Chỉ tìm được nghiệm đa thức (Tương tự Bairstow). 

### II.8. fzero: 
- Chỉ tìm được một nghiệm. 

## III. Sai phân xấp xỉ (Difference Equation): 
- Tính giá trị gần đúng của đạo hàm. 



CHÚ Ý: 
 - Đối với cả chia đôi, dây cung. Nên sử dụng eps=|f(b)| (Các API 2).
 - Phương pháp dây cung thường tốn nhiều vòng lặp hơn so với phương pháp chia đôi. 