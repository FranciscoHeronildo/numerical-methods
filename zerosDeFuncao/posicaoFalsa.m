#Metodo da Falsa Posição

F = inline('x^2.*abs(cos(x))-5');

a = 0;
b = 5;

imax = 100;
tol = 1e-3;

Fa=F(a);
Fb=F(b);

#Resolução do método da Falsa Posição
if Fa*Fb>0
  disp('Raiz Inexistente');
else
  disp('iter       a           b         (xNS)      F(xNS)       Tol'); 
  
  for i = 1:imax
    
    xNS=((a*F(b))-(b*F(a)))/(F(b)-F(a)); #ponto medio
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
