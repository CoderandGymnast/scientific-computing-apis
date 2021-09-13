function [x1,delta] = api_51(g, x0, eps)
  delta=eps+1;
  loops=0;
  while(delta>eps)
    x1=g(x0);
    x0=x1;
    delta=abs(x1-g(x1));
    loops++;
  end
  loops
end
