function [x,y] = edoRK3(EDO,a,b,h,y1)

x(1)=a;
y(1)=y1;
n=(b-a)/h;

for i=1:n
    
   x(i+1)=x(i)+h;

   Ky1=feval(EDO,x(i),y(i));
   Ky2=feval(EDO,x(i)+h/2,y(i)+Ky1/2);
   Ky3=feval(EDO,x(i)+h,y(i)-Ky1+2*Ky2);
   
   y(i+1)=y(i)+(Ky1+(4*Ky2)+Ky3)*h/6;
   
endfor

endfunction
