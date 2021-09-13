% Solving square system of linearly equations.
A1=[-1 1;-2 2]; b1=[1;0];
det(A1)

% Rank(A1) != rank([A1 b1]). Then, no solution.
rank(A1)
rank([A1 b1])


A2=[-1 1;-2 2];
b2=[1;2];

% There are two ways to draw conclusions about the number of solutions to the problem:
% * det(A2) == 0 && rank(A2) == rank([A2 b2]). Then, infinite solutions.
% * rank(A2) == rank([A2 b2]) && rank(A2) < size(A2)(1). Then, infinite solutions.
det(A2)
rank(A2)
rank([A2 b2])

A2\b2

