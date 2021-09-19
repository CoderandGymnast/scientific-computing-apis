format long;
% Samples: 

%% 1:
% 1.1 = 7.7064
% 1.2 = 18.102
% 1.3 = 10.333
% 1.4 = 7.7428
% 1.5 = 7.7221


%f=@(x)x^3+x^2+sin(x);
%F=@(x)x^4/4+x^3/3-cos(x);
%a=-1;
%b=2;

%% 2: 
% F: 12.82
% HT: 11.26
% HTMR: 12.57
%f=@(x)0.3+20*x-140*x^2+730*x^3-810*x^4+200*x^5;
%a=0.2;
%b=0.8;

%% 3: 
% F: 0.8821
% SS13MR, n=4: 0.8818
% f=@(x)e^(-x^2);
% a=0;
% b=2;

%% 4: 
% 0:848696509
% f=@(x)x*e^(-x);
%a=0.5;
%b=4.5;

%% 5: 
% 18.5
f=@(x)x^4+2*x^3+1;
a=1;
b=2;

%disp("F: ")
%F(b)-F(a)
% disp("Trapezoidal rule (HT, n=1): ")
% api_41(f,a,b)
% disp("(Recommended)Expand Trapezoidal rule (HTMR, n=1,2,3...):")
%api_51(f,a,b,1)
% api_51(f,a,b,3)
%api_51(f,a,b,4)
%api_51(f,a,b,1000)
% disp("Simpson 1/3 rule (n=2):")
% api_61(f,a,b)
% disp("Simpson 3/8 rule (n=3):")
% api_71(f,a,b)
disp("(Recommended) Expand 1/3 rule: ")
api_81(f,a,b,3)
%api_81(f,a,b,1000)

