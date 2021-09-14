function [ans]=api_81(f,a,b,n)
% [a;b]
% n=1,2,3,... (segments) 
	h=(b-a)/n;
	ans=f(a)+f(b);
	for i=1:2:n-1
		ans+=4*f(a+i*h);
	end
	for i=2:2:n-2
		ans+=2*f(a+i*h);
	end
	ans=h/3*ans;
end
