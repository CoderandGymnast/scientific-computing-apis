% Samples: 
%% 1: 
% f=@(x)x^2-x-2;
% g=@(x)sqrt(x+2);
% [x,eps]=api_51(g,-1,0.0001)

%% 2: 
% f=@(x)x^2-x-2;
% g=@(x)x^2-2;
% [x,eps]=api_51(g,1.98,0.0001) % [NOTE]: Starting point "2.02" causes singularities. 

%% 3: 
% f=@(x)x-e^-x;
% g=@(x)e^-x;
% [x,eps]=api_51(g,0,0.0001)

%% 4: 
% f=@(x)2*x^2-x-1;
% g=@(x)2*x^2-1;
% [x,eps]=api_51(g,0,0.0001)

%% 5: 
% f=@(x)x-e^-x;
% fzero(f,0)

%% 6: 
f=@(x)x^3 + 5*x^2 -10;
fzero(f,-100)


