function y = f(x)
  y = 1-exp(-2.*x);
endfunction

function integral = simpson13(a,b,n)
  h=(b-a)/(2*n);
  x=a:h:b;
  y = f(x);
  
  soma=0;
  for i = 1:n
    soma = soma + y(2*i-1)+4*y(2*i)+y(2*i*1);
  endfor
  
  integral = (h/3)*soma;
endfunction