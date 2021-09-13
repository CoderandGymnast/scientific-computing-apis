% Samples: 
%% 1:
% f=@(x)x^3+5*x^2-1;
% disp("Solution I: |c-a| error. ");
% [x,eps]=api_11(f,0,2,0.000001)
% disp("Solution II: |f(x)| error: ");
% [x,eps]=api_12(f,0,2,0.000001)

%% 2: 
f=@(x)x^4+2*x^3-2;
disp("Solution I: |c-a| error. ");
[x,eps]=api_11(f,0,1,0.001)
disp("Solution II: |f(x)| error: ");
[x,eps]=api_12(f,0,1,0.1)

%% 3: 
% f=@(x)e^x-2;
% disp("Solution I: |c-a| error. ");
% [x,eps]=api_11(f,0,2,0.01)
% disp("Solution II: |f(x)| error: ");
% [x,eps]=api_12(f,0,2,0.01)

%% 4: Singularities. 
% f=@(x)1/(x-e^-x);
% disp("Solution I: |c-a| error. ");
% [x,eps]=api_11(f,0,1,0.00001)
% disp("Solution II: |f(x)| error: ");
% [x,eps]=api_12(f,0,1,0.00001)

% Audit: 
% f(0.5671)
