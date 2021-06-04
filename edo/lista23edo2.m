function dudt = lista23edo2(t,y,u)

  g=9.81;
  T=31400;
  w=13500-360*t;
  D=0.036*g.*u.^2;
  
  dudt=(T-w-D).*g./w;

endfunction

#function dudt = lista23edo2(t,y,u)

  #g=9.81;
  #T=31400;
  #w=13500+360*t;
  
  #dudt=(T-w-0.036*g*u.^2)*g./w;

#endfunction
