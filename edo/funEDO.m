function dIdt = funEDO(t,I)
  
  V0=1000;
  L=15;
  R=500+250*I*I;
  
  dIdt=V0/L-R*I/L;
  
endfunction