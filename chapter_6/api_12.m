function [ans]=api_12(df,y0,b,h)
	t=0:h:b;
	n=length(t);
	y=zeros(1,n);
	y(1)=y0; % 0-based to 1-based index. 	
	for i=1:n-1
		y(i+1)=y(i)+h*df(y(i),t(i));
	end
	ans=y(n);
end
