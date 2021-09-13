function [x, eps] = api_11(f, a, c, d)
    b = 0;
    loops = 0;
    while (abs(c - a) > d)
        loops++;
        b = (a + c) / 2;
        
				if f(b) * f(a) < 0
            c = b;
        else
            a = b;
        endif

    endwhile

    loops
    x = (a + c) / 2;
    eps = f(x);
end
