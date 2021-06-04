#Metodo de Newton Raphson

#Dados
Fun=inline('((pi*x).*((x.^2+400).^(1/2)))-1200');
D_Fun=inline('(pi.*(2.*x.^2+400))./((x.^2+400).^(1/2))');
x0=0;
Err=1e-10;
imax=50;

#Criação do gráfico
vetor_x=linspace(-100,100,100);
f_x=feval(Fun,vetor_x);
plot(vetor_x,f_x);
grid on;

#Resolução do método de Newton Raphson
for i=1:imax
  xi=x0-feval(Fun,x0)/feval(D_Fun,x0);
  if abs ((xi-x0)/x0)<Err
    xz=xi
    break
  endif
  x0=xi
endfor

fprintf('Solução xz= %11.6f', xz);
fprintf(' , obtida em %i iterações', i);
