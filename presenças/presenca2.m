#Francisco Heronildo Sousa Santos - 160006210

#vetores
v1 = linspace(-1,1,50);
v2 = linspace(-1,1,50);
[x,y] = meshgrid(v1,v2);

#plot do gráfico
figure(1)
hold on;
grid on;
surf(x,y,(x.^2/5.^2) - (y.^2./5.^2))
xlabel('valor de x')
ylabel('valor de y')
zlabel('f(x;y)')
rotate3d
