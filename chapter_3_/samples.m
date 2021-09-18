%% Samples: 
x = 0:10;
y = x.^2;
xx = linspace(0,10);
yy = lagrange(xx,x,y);
plot(x,y,'o',xx,yy,'.')
