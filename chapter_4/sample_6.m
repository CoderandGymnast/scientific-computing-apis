% E.g., x^3 + 5*x^2 -10 = 0
disp("Regular Bairstow:")
api_61([-10 0 5 1],0.000001)
disp("Optimal Bairstow:")
api_62([1 5 0 -10],0.000001)
disp("Roots:")
roots([1 5 0 -10])

