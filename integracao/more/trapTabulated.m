function I = trapTabulated(x,y)
  
  N=length(x) - 1;
  S=0;
  
  for i = 1:N
    S = S + (y(i) + y(i + 1)) * (x(i + 1) - x(i));
  end
  
  I = S / 2;

endfunction
