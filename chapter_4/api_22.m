function [x,eps]=api_22(f,a,c,e)
	b=0;
	loops=0;
	while(abs(f(b))>e)
		loops++;
		b=(a*f(c)-c*f(a))/(f(c)-f(a));
		if f(a)*f(b)<0
			c=b;
		else
			a=b;
		end
	end
	loops
	x=b;
	eps=f(x);
end
