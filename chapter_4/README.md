# Notes: 
## I. Indices: 
* 1. Bisection method: Phương pháp chia đôi.
* 2. Phương pháp dây cung. 

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

CHÚ Ý: Đối với cả chia đôi, dây cung. Nên sử dụng eps=|f(b)| (Các API 2).