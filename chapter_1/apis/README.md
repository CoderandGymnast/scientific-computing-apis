# Notes:  
## I. APIs: 
* 1: Solving Upper Triangular System of Linear Equation.

## II. Questions:
1. Tại sao độ lệch lại có giá trị nhỏ?
- Vì độ lệch là sai khác của b.

A*x=b
f(x)=b
b-b'
b-A*x*

2. Tại sao sai số lại có giá trị lớn?
- Vì sai số là sai khác của x.

3. Định thức của hệ gần bằng 0 có phải nguyên nhân gây ra hiện tượng này?
- Có.

3.1. Lý thuyết: 
- det (determinant, định thức): Đặc trưng của ma trận vuông (Square matrix). 
- det=0: Ma trận vuông suy biến (Ma trận phụ thuộc tuyến tính). 
- Phụ thuộc tuyến tính (Linear dependent): Có thể suy ra dòng này bằng các phép toán cơ bản trên các dòng còn lại.
VD: [1 2; 2 4]

3.2. Phân tích: 
- det=0, các hàng (rows, phương trình) trong ma trận là "gần" phụ thuộc tuyến tính. 
VD: 
[1 2; 2 3.9999]

3.3. Kết luận: 
A\b & inv(A)*b đã giải quyết vấn đề làm tròn. 



4. Tại sao chọn phần tử trụ có giá trị lớn hơn sẽ đảm bảo độ lệch có giá trị nhỏ? (Optional)

5. Tại sao cần dùng cond khi đã có det để xác định tính suy biến của ma trận?
Vì định thức của ma trận KHÔNG LÀ ĐẶC TRƯNG TỐT cho "tính gần suy biến".

## III. Notes: 
- Với hệ 2 phương trình, A suy biến, tức hệ phụ thuộc tuyến tính, nghiệm của (1) cũng là nghiệm của (2). A gần suy biến, nghiệm của (1) gần thỏa mãn (2). 
- Nếu các phần tử trụ (pivots) nhỏ thì ma trận gần suy biến (Hints: Phần tử trụ của phương trình cuối gần bằng 0 thì trở thành phụ thuộc tuyến tính). Khi ma trận gần suy biến, các thay đổi nhỏ tại A, b gây ra sự thay đổi lớn tại x(Lý do tại sao khi ma trận gần suy biến thì việc làm tròn khiến sai số lớn. Từ đó, cần chọn pivots có giá trị lớn).


---

Ôn tâp: 
I. Giải hệ phương trình tuyến tính: 
Cách I: Hồi cấp 3 học. 
1. Hệ ở bất kỳ dạng nào. 
2. Sử dụng các phép khử Gauss (Gaussian elimination) để chuyển ma trận về dạng tam giác trên (Upper Triangler). 
3. Dùng thuật toán tại api_1 để giải. 

Cách II: 
A*x = b
inv(A)*b
A\b

II. Kiểm tra có nghiệm hay không?
rank(A)=rank([A b]). 
Có thể kiểm tra cho cả HPT có nghiệm duy nhất hoặc vô số nghiệm. 

Câu hỏi: 
Cả 2 PA đều sai. 



