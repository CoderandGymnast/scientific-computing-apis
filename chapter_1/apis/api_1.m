function [x] = api_1(U, b, n)
	x = zeros(n, 1);
    for k = n:-1:1
        x(k) = b(k) / U(k, k);
        i = (1:k - 1)';
        b(i) = b(i) - x(k) * U(i, k);
	end;

end;
