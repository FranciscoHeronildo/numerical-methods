function Yint = LinearSpline(x,y,Xint)
  
  n= length(x);
  
  for i = 2:n
    if Xint < x(i)
      break;
    endif
  endfor
  
  Yint = (Xint - x(i))
