function [ans]=api_51(f,a,b,n)
% [a;b]
% n: Number of segments. 
	h=(b-a)/n;
	ans=f(a)+f(b);
	for i=1:n-1
		ans+=2*f(a+i*h);
	end

	ans=h/2*ans;
end
