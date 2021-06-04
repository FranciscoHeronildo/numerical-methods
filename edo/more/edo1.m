function [dxdt] = edo1(t,x,y)
  dxdt = x*t-y;
endfunction