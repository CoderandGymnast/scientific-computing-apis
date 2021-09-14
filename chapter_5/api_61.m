function [ans]=api_61(f,a,b)
% [a;b]
% n=2, 2 segments, 3 points. 
	n=2; % Constant. 
	h=(b-a)/n;
	x0=a;
	x1=a+h;
	x2=b;
	ans=h/3*(f(x0)+4*f(x1)+f(x2));
end
