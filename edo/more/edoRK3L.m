function[t, x, y] = edoRK3L(ODE1, ODE2, a, b, h, x1, y1)

t(1) = a; x(1) = x1; y(1)=  y1;
n = (b-a)/h;

for i = 1:n
    t(i+1) = t(i) + h;
    tm = t(i) + h/2;

   kx1= h * feval(ODE1, t(i), x(i), y(i));
   ky1= h * feval(ODE2, t(i), x(i), y(i));
   kx2= h * feval(ODE1, tm, x(i)+ h/2, y(i)+ky1/2);
   ky2= h * feval(ODE2,tm, x(i)+ h/2, y(i)+ky1/2);
   kx3= h * feval(ODE1, tm, x(i)+ h, y(i) - ky1 + 2*ky2);
   ky3= h * feval(ODE2,tm, x(i)+ h, y(i) - ky1 + 2*ky2);
   x(i+1)=x(i)+(kx1 + 4*kx2+kx3)/6;
   y(i+1)=y(i)+(ky1 + 4*ky2+ky3)/6;
end

