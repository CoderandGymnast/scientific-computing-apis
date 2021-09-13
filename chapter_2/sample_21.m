x0=-1,f0=0,x1=0,f1=1,x2=1,f2=3;
X=[1 x0 x0^2; 1 x1 x1^2; 1 x2 x2^2]; 
b=[f0; f1; f2];

a=X\b;
a
a=inv(X)*b;
a
n
