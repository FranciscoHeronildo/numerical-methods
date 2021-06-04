#Questão7

v1=linspace(2,12,30);
v2=linspace(-1,6,30);

[x,y]=meshgrid(v1v2);

figure(1);
hold on;
grid on;
surf(x, y, (x.^2./a.^2) - (y.^2./b.^2));
title('Paraboloide  Hiperbólico');
xlabel('eixo x');
ylabel('eixo y');
zlabel('f(x:y)');
rotate3d