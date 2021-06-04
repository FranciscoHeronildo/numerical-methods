function [t,x,y] = Sys2EDOsRK2(EDO1,EDO2,a,b,h,x1,y1)
  
t(1)=a;
x(1)=x1;
y(1)=y1;
n=(b-a)/h;

for i=1:n
  
  t(i+1)=t(i)+h;
  
  Kx1=feval(EDO1,t(i),x(i),y(i));
  Ky1=feval(EDO2,t(i),x(i),y(i));
  
  Kx2=feval(EDO1,t(i+1),+x(i)+Kx1*h,y(i)+Ky1*h);
  Ky2=feval(EDO2,t(i+1),+x(i)+Kx1*h,y(i)+Ky1*h);
  
  x(i+1)=x(i)+(Kx1+Kx2)*h/2;
  y(i+1)=y(i)+(Ky1+Ky2)*h/2;
  
endfor
  
endfunction
