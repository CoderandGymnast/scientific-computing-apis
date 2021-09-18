% Samples: 
%% 1:
% c=[1 -6 32 1 1 10 100];
% A=[1 0 0 1 0 6 0;
% 3 1 -4 0 0 2 1;
% 1 2 0 0 1 2 0];
% b=[9;
% 2;
% 6];

% % Base (CS): 
% base=[4 7 5];

c=[2 -6 -4 2 -3];
A=[1 2 4 0 0;
0 4 2 1 0;
0 3 0 0 1];
b=[52;
60;
36];

base=[1 4 5];
A(:,base);
A(:,base)\b

disp("Solution: ")
[solution]=api_11(c,A,b,base);

disp("f*(min):")
c*solution;
