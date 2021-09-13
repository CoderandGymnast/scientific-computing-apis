% Theorem: A system of linear equations has a solution when and only when:
% rank(A)=rank([A b])

% Example 1: 
% Left devision: 
% A*x=b
A=[3 2; 1 -1];
b=[-1; 1];
x=inv(A)*b;
x
A\b

rank(A)
rank([A b])

% Example 2: 
% Left devision: 
% A*x=b
A =[1 2 3; 4 5 6; 8 10 12];
b=[5;6;12];
x=inv(A)*b;
x
A\b

rank(A)
rank([A b])

% Conslution: Example 2 has infinite set of solutions.

