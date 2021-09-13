%Samples: 
%% 1:
% f=@(x)x^3+5*x^2-1;
% df=@(x)3*x^2+10*x;
% [x,delta]=api_31(f,df,1,0.0001)

%% 2:
% f=@(x)x^4+2*x^3-2;
% df=@(x)4*x^3+6*x^2;
% [x,delta]=api_31(f,df,1,0.0001)

%% 3:
% f=@(x)x^3+5*x^2-10;
% df=@(x)3*x^2+10*x;
% [x,delta]=api_31(f,df,1,0.000001)

%% 4: 
% f=@(x)x^2-4*sin(x);
% df=@(x)2*x-4*cos(x);
% [x,delta]=api_31(f,df,3,0.0001)

%% 5: 
% f=@(x)x^2-2;
% df=@(x)2*x;
% [x,delta]=api_31(f,df,4,0.0000000002)


