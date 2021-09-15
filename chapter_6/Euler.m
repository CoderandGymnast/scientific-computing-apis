y=1
h=0.1
f=@(y,t)y+t^2*y+1
t=[0 0.1 0.2 0.3]
for i=t
  y=y+h*feval(f,y,i)
endfor