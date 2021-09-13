function [x1,delta] = api_41(f, x0, x1, eps)
  delta=eps+1;
  loops=0;
  while(delta>eps)
    df1=(f(x1)-f(x0))/(x1-x0);
    x2=x1-f(x1)/df1;
    x0=x1;
    x1=x2;
    delta=abs(f(x1));
    loops++;
  end
	loops
end
