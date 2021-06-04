function I = Simpsons38(FunName, a, b)

N=3;
h=(b-a)/N;
x=a:h:b;
y=FunName(x);
I=3*h/8*(y(1)+2*sum(y(4:3:(N-2)))+y(N+1));
N=2*N;
check=0;

while check==0;
  h=(b-a)/N;
  x=a:h:b;
  y=FunName(x);
  
  I_new=3*h/8*(y(1)+2*sum(y(4:3:(N-2)))+y(N+1));
  I_new=I_new+3*h/8*3*(sum(y(2:3:(N-1)))+sum(y(3:3:N)));
  
  error=abs(I-I_new)/I*100;
  
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
