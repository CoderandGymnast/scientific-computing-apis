% api_1:
x0=4,f0=3,x1=9,f1=6;
[a0 a1]=api_1(x0,f0,x1,f1)

% Use solutions of solving System of Linear Equations: 
X=[1 x0; 1 x1]; 
b=[f0; f1];

% Solution 1: 
inv(X)*b

% Solution 2: 
X\b




% api_2:
%% A. System of Linear Equations solution:  
x2=7,f2=4;

X=[1 x0 x0^2; 1 x1 x1^2; 1 x2 x2^2]; 
b=[f0; f1; f2];

% Solution 1: 
inv(X)*b

% Solution 2: 
X\b


%% Lagrange: 
x = [0 1 2 3];
y = [-5 -6 -1 16];
u= [0.25:0.01:3.25];
v = api_2(x,y,u);
% plot(x,y,'o',u,v,'-')

x=[-1 0 1];
y=[0 1 3];
u=[-1:0.01:1];
v=api_2(x,y,u);
plot(x,y,'o',u,v,'-')


