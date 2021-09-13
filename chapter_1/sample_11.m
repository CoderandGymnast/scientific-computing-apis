% Left devision: 
% A*x=b
A=[3 2; 1 -1];
b=[-1; 1];
x=inv(A)*b;
disp(x);
disp(A\b);			

% Right devision: 
% x*A=b
A=[1 2; -3 -1];
b=[-1 -1];
x=b*inv(A);
disp(x);
disp(b/A);
