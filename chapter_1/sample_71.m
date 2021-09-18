x=[sqrt(5) 2];
// norm(x)
// norm(x,1)
// norm(x,2)
// norm(x,3)
// norm(x,"inf")

% 1. "Almost" singular matrix: 
A=[1 2 3; 4 5 6; 7 8 9];
cond(A)
det(A)

% 2. Non-singular matrix:  
A=[1 3; -1 10];
cond(A)
det(A)
