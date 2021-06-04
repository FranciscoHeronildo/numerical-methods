#diferenca central 4 pontos
f=inline('(2*x-1)/((((x^4)*sin(x))+x+1)^(1/4))','x');
xi_minus_2=1.96;
xi_minus_1=1.98;
xi_plus_1=2.02;
xi_plus_2=2.04;
fi_minus_2=f(xi_minus_2); 
fi_minus_1=f(xi_minus_1);
fi_plus_1=f(xi_plus_1);
fi_plus_2=f(xi_plus_2);
h=0.02;
first_deriv=(fi_minus_2-(8*fi_minus_1)+(8*fi_plus_1)-fi_plus_2)/(12*h)