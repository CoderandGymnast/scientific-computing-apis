function [x,eps]=api_21(f,a,c,e)
	b=0;
	loops=0;
	while(abs(c-a)>e)
		loops++;
		b=(a*f(c)-c*f(a))/(f(c)-f(a));
		if abs(f(b))<=0.0001 % [NOTE]: |f(x)  - 0| <= 0.0001. Can change this.
			break;
		else
			if f(a)*f(b)<0
				c=b;
			else
				a=b;
			end
		end
	end
	loops
	x=b;
	eps=f(x);
end
