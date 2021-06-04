function [a1,a0] = RegressaoLinear(x,y)

  nx=length(x);
  ny=length(y);
  
  if nx~=ny
    disp('ERRO: O numero de elementos deve ser o mesmo que em y.')
    a1='ERRO';
    a0='ERRO';
  else
    Sx=sum(x);
    Sy=sum(y);
    Sxy=sum(x.*y);
    Sxx=sum(x.^2);
    a1=(nx*Sxy-Sx*Sy)/(nx*Sxx-Sx^2);
    a0=(Sxx*Sy-Sxy*Sx)/(nx*Sxx-Sx^2);
  endif

end
