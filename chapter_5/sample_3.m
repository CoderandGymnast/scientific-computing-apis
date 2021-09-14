% Samples:

%% 1:
% f=@(x)x.^3+5*x.^2-10;
% df=@(x)3*x.^2+10*x;
% h=0.01;
% x=3;

% 2: 
f=@(x)sin(x);
df=@(x)cos(x);
h=0.1;
x=pi/3;

%% 3: 
% f=@(x)x^4+2*x^3-x+1;
% df=@(x)4*x^3+6*x^2-1;
% h=0.01;
% x=4;

disp("API: ")
api_31(f,h,x)
disp("Formula: ")
df(x)


# NOTE: 
# - Choose h small enough to decrease the delta.
