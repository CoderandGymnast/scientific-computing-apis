% Noi suy duong cong khop (3 diem, bac 2).

p0 = [1 3.5];
p1 = [2 6];
p2 = [3 10.5];

%------------------------------
% disp("Solution I: ")
% x=[p0(1); p1(1); p2(1)];
% y=[p0(2); p1(2); p2(2)];
% u=2;
% api_2(x,y,u)


X = [1 p0(1) p0(1)^2;
    1 p1(1) p1(1)^2;
    1 p2(1) p2(1)^2];

b = [p0(2);
    p1(2);
    p2(2)];



disp("Solution II:")
inv(X) * b

disp("Solution III: ");
X \ b

%------------------------------

% a0 + a1*x + a2*x^2.
% 3.0 -0.5x+x^2
