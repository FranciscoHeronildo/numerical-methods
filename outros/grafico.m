#Grafico

#x=linspace(-3,3,1e2);
#funtion=2*x;
#y=funtion;

x=[183 173 168 188 158 163 193 163 178];
y=[79 69 70 81 61 63 79 71 73];
figure(1);
plot(x,y, 'o');
grid on;
title('Grafico');
xlabel('Altura(cm)');
ylabel('Peso(kg)');
