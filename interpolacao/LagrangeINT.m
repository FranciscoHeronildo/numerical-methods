function Yint = LagrangeINT(x,y,Xint)

n = length(x);

for i = 1:n
  
    L(i) = 1;
    for j = 1:n
      if j -= i
        L(i)=L(i)*(Xint-x(j))/(x(i)-x(j));
      endif
    endfor

endfor  

Yint = sum(y.*L);

end