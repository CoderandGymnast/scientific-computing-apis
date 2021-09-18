function [solution] = api_11(c, A, b, base)

    loopCount = 0;

    while (1)

        preA = repmat(A, 1);

        [m, n] = size(A);

        B = A(:, base);

		if (!loopCount)
	        xBase = B \ b; % Acceptable base solution.
		end

        preXBase = repmat(xBase, 1);

		if(!loopCount)
    	    cBase = c(base);
		end

        if (!loopCount)
            deltas = zeros(1, 7); % Estimation vector.
            u = cBase * B;
            nonBaseIDs = getIDs(n, base);
            deltas(nonBaseIDs) = u * A(:, nonBaseIDs) - c(nonBaseIDs);
            deltas(base) = 0; % Deltas of non-base elements are set to "0".

        end


        if (!max(deltas))
            break;
        end

        loopCount++;

        preDeltas = repmat(deltas, 1);

        [_, j0] = max(deltas);

        thetas(1:m) = Inf;

        aj0 = A(:, j0);

        for i = 1:length(aj0)
            a = aj0(i);

            if (a > 0)
                thetas(i) = xBase(i) / a;
            end

        end

        [_, i0] = min(thetas);

		cBase(i0)=c(j0);
		base(i0)=j0;

        xi0j0 = A(i0, j0);
        A(i0, :) /= xi0j0;
        xBase(i0) /= xi0j0;

        tmp = zeros(m, 1);
        tmp(i0) = 1; % Always.
        A(:, j0) = tmp;
        deltas(j0) = 0;

        for i = 1:m

            if (i == i0)
                continue;
            end

            xBase(i) = preXBase(i) - preXBase(i0) * preA(i, j0) / xi0j0;
        end

        for i = 1:m

            for j = 1:n

                if (i == i0 || j == j0)
                    continue;
                end

                A(i, j) = preA(i, j) - preA(i0, j) * preA(i, j0) / xi0j0;
            end

        end

        for j = 1:n

            if (j == j0)
                continue;
            end

            deltas(j) = preDeltas(j) - preA(i0, j) * preDeltas(j0) / xi0j0;
        end

    end

    solution = zeros(n,1);
	for i = 1:m
		solution(base(i))=xBase(i);
	end

end
