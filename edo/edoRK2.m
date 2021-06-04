function [x,y] = edoRK2(EDO,a,b,h,yINT)
  
x(1)=a;
y(1)=yINT;
n=(b-a)/h;

for i=1:n
  
  x(i+1)=x(i)+h;
  
  Ky1 = feval(EDO,x(i),y(i));
  Ky2 = feval(EDO,x(i+1),y(i)+Ky1*h);
  y(i+1)=y(i)+(Ky1+Ky2)*(h/2);

endfor
  
endfunction
