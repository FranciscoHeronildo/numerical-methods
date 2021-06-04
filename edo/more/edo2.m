function [dydt] = edo2(t,x,y)
  dydt = y*t+x;
endfunction