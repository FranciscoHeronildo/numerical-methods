#Francisco Heronildo Sousa Santos -160006210

function I = trapezoidal(x,y)
  
  N=length(x) - 1;
  F=0;
  
  for i=1:N
    F = F + (y(i) + y(i + 1)) * (x(i + 1) - x(i));
  endfor

  I = F / 2;
  
endfunction
