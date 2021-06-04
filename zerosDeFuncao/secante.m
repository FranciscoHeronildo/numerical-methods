#Metodo da Secante

Fun=inline('x.^2.*abs(cos(x))-5');

Err=1e-3;
imax=12;
a=4.8;
b=5;

#Cria��o do gr�fico
#vetor_x=linspace(-10,10,100);
#f_x=feval(Fun,vetor_x);
#plot(vetor_x,f_x);
#grid on;

#Resolu��o do m�todo da Secante
for i=1:imax
  Fb=feval(Fun,b);
  Fa=feval(Fun,a);
  
  xi=b-Fb*(a-b)/(Fa-Fb);
  if abs((xi-b)/b)<Err
    xz=xi;
    break
  endif
  a=b
  b=xi
endfor

fprintf('Solucao xz= %11.6f', xz);
fprintf(' , obtida em %i itera��es', i);
