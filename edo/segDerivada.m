function ydd=segDerivada(x,y)
  
  n=length(x);
  h=x(2)-x(1);
  
for i=2:n-1
  ydd(i)=(y(i-1)-2*y(i)+y(i+1))/h.^2;
endfor

  ydd(1)=(2*y(1)-5*y(2)+4*y(3)-y(4))/h.^2;
  ydd(n)=(-y(n-3)+4*y(n-2)-5*y(n-1)+2*y(n))/h.^2;
  
endfunction
