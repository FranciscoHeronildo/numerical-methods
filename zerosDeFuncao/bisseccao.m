#Metodo da Bissecção
#Equação Analisada
F = inline('x^2-exp(-x)');

#Valores
a = 0;
b = 1;

#Interação
imax = 50;

#Tolerancia
tol = 1e-4;

Fa=F(a);
Fb=F(b);

if Fa*Fb>0
  disp('Raiz Inexistente');
else
  disp('iter       a           b         (xNS)      F(xNS)       Tol');
  
  for i = 1:imax
    
    xNS=(a+b)/2; #Ponto Medio
    
    tol_i=(b-a)/2;
    F_xNS=F(xNS);
    
    fprintf('%3i %11.6f %11.6f %11.6f %11.6f %11.6f\n', i, a, b, xNS, F_xNS, tol_i);
  
    if tol_i<tol
      break
    endif

    if F(a)*F_xNS < 0
      b = xNS;
    else
      a = xNS;
    endif
    
   endfor
endif
