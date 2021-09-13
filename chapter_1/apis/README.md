# Notes:  
## I. APIs: 
* 1: Solving Upper Triangular System of Linear Equation.

## II. Questions:
1. Tại sao độ lệch lại có giá trị nhỏ?
- Vì độ lệch là sai khác của b.

2. Tại sao sai số lại có giá trị lớn?
- Vì sai số là sai khác của x.

3. Định thức của hệ gần bằng 0 có phải nguyên nhân gây ra hiện tượng này?
- Có.

4. Tại sao chọn phần tử trụ có giá trị lớn hơn sẽ đảm bảo độ lệch có giá trị nhỏ? (Optional)

5. Tại sao cần dùng cond khi đã có det để xác định tính suy biến của ma trận?
Vì định thức của ma trận KHÔNG LÀ ĐẶC TRƯNG TỐT cho tính gần suy biến.

## III. Notes: 
- Với hệ 2 phương trình, A suy biến, tức hệ phụ thuộc tuyến tính, nghiệm của (1) cũng là nghiệm của (2). A gần suy biến, nghiệm của (1) gần thỏa mãn (2). 
- Nếu các phần tử trụ (pivots) nhỏ thì ma trận gần suy biến (Hints: Phần tử trụ của phương trình cuối gần bằng 0 thì trở thành phụ thuộc tuyến tính). Khi ma trận gần suy biến, các thay đổi nhỏ tại A, b gây ra sự thay đổi lớn tại x(Lý do tại sao khi ma trận gần suy biến thì việc làm tròn khiến sai số lớn. Từ đó, cần chọn pivots có giá trị lớn).


