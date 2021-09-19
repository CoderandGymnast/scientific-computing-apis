function [a0 a1] = api_1(x0, f0, x1, f1)

	a0=(x1*f0 - x0*f1)/(x1-x0);
	a1=(f1-f0)/(x1-x0);

end
