% Solve the follownig problem: 
A=[10 -7 0; -3 2 6; 5 -1 5];
b=[7;6;4];

det(A)
rank(A)
rank([A b])

% Solution 1: Use left devision.
A\b

% Solution 2: Use matrix inverse.
inv(A)*b

% Solution 3: Use Gaussian elimination (Row reduction) to transform the equation into row-echolon form. 


