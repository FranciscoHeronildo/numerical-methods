%Euler Explicito
function [x,y] = edoEULER(EDO,a,b,h,yINT)

x(1)=a;
y(1)=yINT;
N=(b-a)/h;

for i=1:N
  x(i+1)=x(i)+h;
  y(i+1)=y(i)+feval(EDO, x(i), y(i)) * h;
endfor

end

%EDO=inline('-1.2*y+7*exp(-0.3*x)');
%a=0;
%b=2.5;
%h=0.5;
%yINT=3;
%[x,y] = edoEULER(EDO,a,b,h,yINT);
%plot(x,y);
%xx=a:0.1:b;
%yy=70/9*exp(-0.3*xx)-43/9*exp(-1.2*xx);
%[x,y] = edoEULER(EDO,a,b,0.5,yINT);
%[x1,y1] = edoEULER(EDO,a,b,0.4,yINT);
%[x2,y2] = edoEULER(EDO,a,b,0.2,yINT);
%plot(x,y,x1,y1,x2,y2,xx,yy);
%hold on; grid on;
%xlabel('x');ylabel('y');
%legend('h=0.5','h=0.4', 'h=0.2', 'solucao exata');
