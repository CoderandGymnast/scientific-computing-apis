function x = api_62(a, eps)
	% Optimal. 
  % a(0)*x^N + a(1)*x^(N-1) + ... + a(N)
  % a = [a(0) a(2) ... a(N)]

  p=rand();
  q=rand(); 
  n = length(a) - 1;
  
  if n==1
    x=-a(2)/a(1);
  elseif n==2
    x=unique([(-a(2)+sqrt(a(2)^2-4*a(1)*a(3)))/2*a(1) (-a(2)+sqrt(a(2)^2+4*a(1)*a(3)))/2*a(1)]);
  else
    
    b = der = zeros(1, n+1);
    loopCounter=0;
    while (1)
      
        loopCounter++;
        
        b(1) = a(1);
        b(2) = a(2) +  p*b(1);
        for i = 3:(n+1)
            b(i) = a(i) + p*b(i-1) + q*b(i-2);
        endfor
        
        if max([abs(b(n)) abs(b(n+1))])<eps break endif
        
        der(1) = b(1);
        der(2) = b(2) + p*der(1);
        for i = 3:(n)
            der(i) = b(i) + p*der(i-1) + q*der(i-2);
        endfor
        
        deltas=inv([der(n-1) der(n-2); der(n) der(n-1)])*[-b(n); -b(n+1)];
        p = p + deltas(1);
        q = q + deltas(2);
        
    endwhile
    
    x = [(p+sqrt(p^2+4*q))/2 (p-sqrt(p^2+4*q))/2 api_62(b(1:end-2), eps)]; % f(x) = x^2 - p*x - q.
  endif
end
