% "Bad" system of linear equation:  
% 1. 
A=[0.789 0.563;0.913 0.659];
fprintf('cond(A)=%d ; det(A)=%d\n',cond(A),det(A))

% 2. 
A = [4.1 2.8; 9.7 6.6]; b = [4.1 ; 9.7]; b1=[4.11 ; 9.7];
cond(A,1)
cond(A,2)
cond(A)
cond(A,"inf");
x = (A \ b)'
x1 = (A \ b1)'

