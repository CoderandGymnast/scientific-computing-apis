function [d] = api_21(f, h,x) # NOTE: Could use h = 0.0001.
	d=(f(x)-f(x-h))/h;
end
