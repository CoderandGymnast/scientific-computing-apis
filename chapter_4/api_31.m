function [x1,delta] = api_31(f, df, x0, eps)
  delta=eps+1;
  loops=0;
  while(delta>eps)
    x1=x0-f(x0)/df(x0);
    delta=abs(f(x1));
    x0=x1;
    loops++;
  end
  loops
end
