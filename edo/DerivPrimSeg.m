function [yd,ydd]=DerivPrimSeg(x,y)
  
  n=length(x);
  h=x(2)-x(1);
  
  for i=2:n-1
    yd(i)=(y(i+1)-y(i-1))/(2*h);
    ydd(i)=(y(i-1)-2*y(i)+y(i+1))/(h.^2);
  endfor
  
  yd(1)=(-3*y(1)+4*y(2)-y(3))/(2*h);
  yd(n)=(y(n-2)-4*y(n-1)+3*y(n))/(2*h);
  
  ydd(1)=(2*y(1)-5*y(2)+4*y(3)-y(4))/(h.^2);
  ydd(n)=(-y(n-3)+4*y(n-2)-5*y(n-1)+2*y(n))/(h.^2);
  
endfunction
