p0 = [1 2];
p1 = [5 7];

%------------------------------

disp("Solution I:")
[a0 a1] = api_1(p0(1), p0(2), p1(1), p1(2))

X = [1 p0(1);
1 p1(1)];
b = [p0(2);
p1(2)];
disp("Solution II: ")
inv(X) * b

disp("Solution III: ")
X \ b

%------------------------------

% a0+a1*x.
