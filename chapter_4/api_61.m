function x = api_61(a,eps)
  % a(0) + a(1)*x + ... + a(N)*x^(N)
  % a = [a(0) a(2) ... a(N)]
  
  n=length(a); % N=n-1
  
  if n==2
    x=-a(1)/a(2);
  elseif n==3
    x=unique([(-a(2)+sqrt(a(2)^2-4*a(1)*a(3)))/2*a(3) (-a(2)+sqrt(a(2)^2+4*a(1)*a(3)))/2*a(3)]);
  else
  
    % Step 1: Initiate p, q & calculate b0, b1.
    p=-0.9;
    q=0.9;
    deltaB=2*eps;
    loopCounter=0;
    while(1)
      loopCounter++;
      b2=a(n);
      b1=a(n-1)-p*b2;
      b=[b1 b2];
      b0=0;
      for i=[n-2:-1:2] % 1-based index
        b0=a(i)-p*b1-q*b2;
        b=[b0 b];
        b2=b1;
        b1=b0;
      endfor
      b0=a(1)-q*b2;
      b=[b0 b];
      
      deltaB=min([abs(b(1)) abs(b(2))]);
      if deltaB<=eps break endif;
      
      % Step 2: Calculate (b0)p, (b1)p, (b0)q, (b1)q.
      b2p=0;
      b1p=-b(n)-p*b2p;
      b0p=0;
      for i=[n-2:-1:2]
        b0p=-b(i+1)-p*b1p-q*b2p;
        b2p=b1p;
        b1p=b0p;
      endfor
      b0p=-q*b2p;
      
      b2q=b1q=b0q=0;
      for i=[n-2:-1:2]
        b0q=-b(i+2)-p*b1q-q*b2q;
        b2q=b1q;
        b1q=b0q;
      endfor
      b0q=-b(3)-q*b2q;
      
      % Step 3: Calculate delta p & delta q.
      deltas=inv([b0p b0q;b1p b1q])*[-b(1);-b(2)];
      
      % Step 4: Calculate p* & q*.
      p=p+deltas(1);
      q=q+deltas(2);
    endwhile
    
    % Step 5: Calculate x.
    x=unique([(-p+sqrt(p^2-4*q))/2 (-p-sqrt(p^2-4*q))/2 api_61(b(3:end),eps)]);
  endif
end
