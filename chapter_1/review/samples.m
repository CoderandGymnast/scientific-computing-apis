% Samples:
%% 1. Almost linear dependent: 
A=[0.780 0.563;
0.913 0.659];

b=[0.217;
0.254];

det(A); %1.0000e-06 ~ 0.

x=[1;
-1];

A*x - b; % [0 0]

A\b
inv(A)*b





