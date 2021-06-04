function dx = derivada(x,y)
%x vetores
%y vetores
n=length(x);
dx(1)=(y(2)-y(1)/x(2)-x(1));

for i=2:n-1
  dx(i)=(y(i+1)-y(i-1))/(x(i+1)-x(i-1));
endfor

dx(n)=(y(n)-y(n-1))/(x(n)-x(n-1));

endfunction