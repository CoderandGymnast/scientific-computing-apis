function [d] = api_31(f, h,x) # NOTE: Could use h = 0.0001.
	d=(f(x+h)-f(x-h))/(2*h);
end
