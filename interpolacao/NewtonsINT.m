function [Yint,a] = NewtonsINT(x,y,Xint);

  n = length(x);
  a(1) = y(1);
  
  for i = 1:n -1
    divDIF(i,1) = y(i+1)-y(i) / (x(i+1)-x(i));
  endfor

  for j=2:n-1
    for i=1:n-j
      divDIF(i,j) = (divDIF(i+1,j-1) - divDIF(i,j-1))/(x(j+i) - x(i));
      endfor
  endfor

  for j=2:n
    a(j)=divDIF(1,j-1);
  endfor
  
  Yint=a(1);
  xn=1;
  
  for k=2:n
    xn=xn*(Xint-x(k-1));
    Yint=Yint+a(k)*xn;
  endfor

end