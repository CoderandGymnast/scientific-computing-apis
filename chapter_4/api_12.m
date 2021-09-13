function [c, eps] = api_12(f, a, b, error)%f=@(x)x^2-3; a=1; b=2; (ensure change of sign between a and b) error=1e-4
    c = (a + b) / 2;
	loops=0;

    while abs(f(c)) > error
		loops++;
        if f(c) * f(a) < 0
            b = c;
        else
            a = c;
        end

        c = (a + b) / 2;
    end
	loops
    eps = f(c);
end
