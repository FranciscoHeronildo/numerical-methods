%Euler Modificado
function [x,y] = edoEulerMod(EDO,a,b,h,yINT)

x(1)=a;
y(1)=yINT;
N=(b-a)/h;

for i=1:N
  x(i+1)=x(i)+h;
  IncliEu=feval(EDO,x(i),y(i));
  YEu=y(i)+IncliEu*h;
  InclFin=feval(EDO, x(i+1), YEu);
  y(i+1)=y(i)+(IncliEu+InclFin)*h/2;
endfor

end

%EDO = @funEDO funEDO.m file
%a=0;
%b=0.1;
%h=0.005;
%yINT=0;
%[tt,II] = edoEulerMod(@funEDO,a,b,h,yINT);
%plot(x,y);
