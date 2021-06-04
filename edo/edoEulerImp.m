%Euler Implícito 
a=0;
b=0.1;
h=0.005;
N=(b-a)/h;
n(1)=0;
t(1)=a; 

for i=1:N
  t(i+1)=t(i)+h; 
  x=n(i); 

for j=1:25
  
  num = x-(1000/15)*h+((500*x+250*x^3)/15*x)*h-n(i);
  den = 1+(100*x/3)*h;
  
  xnew=x-num/den;
  
  if abs ((xnew -x)/x) < 1e-4
    break;
  else 
    x=xnew;
  endif
endfor 
  if j==25
    fprintf('Sem solução numérica em t=%g s\n',t(i));
    break
  endif

  n(i+1)=xnew;
endfor

plot(t,n);
grid on;
xlabel('t(s)');
ylabel ('n');
