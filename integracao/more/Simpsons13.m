function I = Simpsons13(FunName, a, b)
  
  N=2;
  h=(b-a)/N;
  x=a:h:b;
  y=FunName(x);
  I=h/3*(y(1)+4*sum(y(2:2:N))+2*sum(y(3:2:(N-1)))+y(N+1));
  N=2*N;
  check=0;
  
  while check==0;
    
    h=(b-a)/N;
    x=a:h:b;
    y=FunName(x);
    
    I_new=h/3*(y(1)+4*sum(y(2:2:N))+2*sum(y(3:2:(N-1)))+y(N+1));
    
    error=abs(I+I_new)/I*100;
    
    if error>1.0
      check=0;
      N=N*2;
      I=I_new;
    elseif error<=1.0
      check=1;
      I=I_new;
    endif
  
  endwhile
  
end
