f=@(x)(x-1)*(x-1.5)*(x-2.0)*(x-2.5);
h=0.01;
Y=0:h:4;
N=4/h;
for i=1:N-1
  DFSPT(i)=(feval(f,Y(i+1)) - feval(f,Y(i)))/h;
  plot(Y(i),DFSPT(i),'*');
end


