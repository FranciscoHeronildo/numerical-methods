function [t,x,y] = Sys2EDOsRK3(EDO1,EDO2,a,b,h,x1,y1)

t(1)=a;
x(1)=x1;
y(1)=y1;
n=(b-a)/h;

for i=1:n
    
   t(i+1)=t(i)+h;
   tm=t(i)+h/2;

   Kx1=feval(EDO1,t(i),x(i),y(i));
   Ky1=feval(EDO2,t(i),x(i),y(i));
   
   Kx2=feval(EDO1,tm,x(i)+h,y(i)+Ky1);
   Ky2=feval(EDO2,tm,x(i)+h,y(i)+Ky1);
   
   Kx3=feval(EDO1,tm,x(i)+h,y(i)-Ky1+2*Ky2);
   Ky3=feval(EDO2,tm,x(i)+h,y(i)-Ky1+2*Ky2);
   
   x(i+1)=x(i)+(Kx1+(4*Kx2)+Kx3)*h/6;
   y(i+1)=y(i)+(Ky1+(4*Ky2)+Ky3)*h/6;
   
endfor

endfunction
