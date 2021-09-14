function [d] = api_11(f, h,x) # NOTE: Could use h = 0.0001.
	d=(f(x+h)-f(x))/h;
end

