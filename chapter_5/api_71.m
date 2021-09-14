function [ans]=api_71(f,a,b)
% [a;b]
% n=3, 3 segments, 4 points. 
	n=3; % Constant. 
	h=(b-a)/n;
	x0=a;
	x1=a+h;
	x2=a+2*h;
	x3=b;
	ans=3/8*h*(f(x0)+3*f(x1)+3*f(x2)+f(x3));
end
